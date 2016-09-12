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

#ifndef _KOSINSKI_H_
#define _KOSINSKI_H_

#include <iosfwd>
class kosinski {
private:
	static void encode_internal(std::ostream &Dst, unsigned char const *&Buffer,
	                            std::streamsize const BSize, std::streamsize const Padding);
public:
	static long encode(std::istream &Src, std::ostream &Dst,
	                   int srcStart = 0, int srcLength = 0, int dstStart = 0);
};

#endif // _KOSINSKI_H_
