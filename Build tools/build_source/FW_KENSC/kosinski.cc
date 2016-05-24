/* -*- Mode: C++; indent-tabs-mode: t; c-basic-offset: 4; tab-width: 4 -*- */
/*
 * Copyright (C) Flamewing 2011-2015 <flamewing.sonic@gmail.com>
 * Copyright (C) 2002-2004 The KENS Project Development Team
 *
 * This program is free software: you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <istream>
#include <ostream>
#include <sstream>

#include "kosinski.h"
#include "bigendian_io.h"
#include "bitstream.h"
#include "lzss.h"

using namespace std;

// NOTE: This has to be changed for other LZSS-based compression schemes.
struct KosinskiAdaptor {
	typedef unsigned char  stream_t;
	typedef unsigned short descriptor_t;
	typedef littleendian<descriptor_t> descriptor_endian_t;
	// Number of bits on descriptor bitfield.
	constexpr static size_t NumDescBits = sizeof(descriptor_t) * 8;
	// Number of bits used in descriptor bitfield to signal the end-of-file
	// marker sequence.
	constexpr static size_t NumTermBits = 2;
	// Flag that tells the compressor that new descriptor fields are needed
	// as soon as the last bit in the previous one is used up.
	constexpr static size_t NeedEarlyDescriptor = 1;
	// Flag that marks the descriptor bits as being in little-endian bit
	// order (that is, lowest bits come out first).
	constexpr static size_t DescriptorLittleEndianBits = 1;
	// Size of the search buffer.
	constexpr static size_t SearchBufSize = 8192;
	// Size of the look-ahead buffer.
	constexpr static size_t LookAheadBufSize = 256;
	// Total size of the sliding window.
	constexpr static size_t SlidingWindowSize = SearchBufSize + LookAheadBufSize;
	// Computes the cost of a symbolwise encoding, that is, the cost of encoding
	// one single symbol..
	constexpr static size_t symbolwise_weight() noexcept {
		// Symbolwise match: 1-bit descriptor, 8-bit length.
		return 1 + 8;
	}
	// Computes the cost of covering all of the "len" vertices starting from
	// "off" vertices ago, for matches with len > 1.
	// A return of "numeric_limits<size_t>::max()" means "infinite",
	// or "no edge".
	static size_t dictionary_weight(size_t dist, size_t len) noexcept {
		// Preconditions:
		// len > 1 && len <= LookAheadBufSize && dist != 0 && dist <= SearchBufSize
		if (len == 2 && dist > 256)
			// Can't represent this except by inlining both nodes.
			return numeric_limits<size_t>::max();	// "infinite"
		else if (len <= 5 && dist <= 256)
			// Inline dictionary match: 2-bit descriptor, 2-bit count, 8-bit distance.
			return 2 + 2 + 8;
		else if (len >= 3 && len <= 9)
			// Separate dictionary match, short form: 2-bit descriptor, 13-bit distance,
			// 3-bit length.
			return 2 + 13 + 3;
		else //if (len >= 3 && len <= 256)
			// Separate dictionary match, long form: 2-bit descriptor, 13-bit distance,
			// 3-bit marker (zero), 8-bit length.
			return 2 + 13 + 8 + 3;
	}
	// Given an edge, computes how many bits are used in the descriptor field.
	static size_t desc_bits(AdjListNode const &edge) noexcept {
		// Since Kosinski non-descriptor data is always 1, 2 or 3 bytes in length,
		// this is a quick way to compute it.
		return edge.get_weight() & 7;
	}
	// Kosinski finds no additional matches over normal LZSS.
	static void extra_matches(stream_t const *UNUSED(data),
	                          size_t UNUSED(basenode),
	                          size_t UNUSED(ubound), size_t UNUSED(lbound),
	                          LZSSGraph<KosinskiAdaptor>::MatchVector &UNUSED(matches)) noexcept {
	}
	// KosinskiM needs to pad each module to a multiple of 16 bytes.
	static size_t get_padding(size_t totallen, size_t padmask) noexcept {
		// Add in the size of the end-of-file marker.
		if (!padmask) {
			return 0;
		}
		size_t padding = totallen + 3 * 8;
		return ((padding + padmask) & ~padmask) - totallen;
	}
};

void kosinski::encode_internal(ostream &Dst, unsigned char const *&Buffer,
                               streamsize const BSize, streamsize const Padding) {
	typedef LZSSGraph<KosinskiAdaptor> KosGraph;
	typedef LZSSOStream<KosinskiAdaptor> KosOStream;

	// Compute optimal Kosinski parsing of input file.
	KosGraph enc(Buffer, BSize, Padding);
	typename KosGraph::AdjList list = enc.find_optimal_parse();
	KosOStream out(Dst);

	streamoff pos = 0;
	// Go through each edge in the optimal path.
	for (typename KosGraph::AdjList::const_iterator it = list.begin();
	        it != list.end(); ++it) {
		AdjListNode const &edge = *it;
		size_t len = edge.get_length(), dist = edge.get_distance();
		// The weight of each edge uniquely identifies how it should be written.
		// NOTE: This needs to be changed for other LZSS schemes.
		switch (edge.get_weight()) {
			case 9:
				// Symbolwise match.
				out.descbit(1);
				out.putbyte(Buffer[pos]);
				break;
			case 12:
				// Inline dictionary match.
				out.descbit(0);
				out.descbit(0);
				len -= 2;
				out.descbit((len >> 1) & 1);
				out.descbit(len & 1);
				out.putbyte(-dist);
				break;
			case 18:
			case 26: {
				// Separate dictionary match.
				out.descbit(0);
				out.descbit(1);
				dist = (-dist) & 0x1FFF;
				unsigned short high = (dist >> 5) & 0xF8,
				               low  = (dist & 0xFF);
				if (edge.get_weight() == 18) {
					// 2-byte dictionary match.
					out.putbyte(low);
					out.putbyte(high | (len - 2));
				} else {
					// 3-byte dictionary match.
					out.putbyte(low);
					out.putbyte(high);
					out.putbyte(len - 1);
				}
				break;
			}
			default:
				// This should be unreachable.
				break;
		}
		// Go to next position.
		pos = edge.get_dest();
	}

	// Push descriptor for end-of-file marker.
	out.descbit(0);
	out.descbit(1);

	// Write end-of-file marker. Maybe use 0x00 0xF8 0x00 instead?
	out.putbyte(0x00);
	out.putbyte(0xF0);
	out.putbyte(0x00);
}

long kosinski::encode(istream &Src, ostream &Dst,
                      int srcStart, int srcLength, int dstStart) {
	streamsize BSize = srcLength;
	Src.seekg(srcStart);
	Dst.seekp(dstStart);
	char *const Buffer = new char[BSize];
	unsigned char const *ptr = reinterpret_cast<unsigned char *>(Buffer);
	Src.read(Buffer, BSize);

	encode_internal(Dst, ptr, BSize, 1u);

	// Pad to even size.
	if ((Dst.tellp() & 1) != 0)
		Dst.put(0);

	delete [] Buffer;

	int size = Dst.tellp();
	size -= dstStart;
	return size;
}
