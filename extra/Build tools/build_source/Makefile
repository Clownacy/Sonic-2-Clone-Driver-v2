CFLAGS := -std=c99 -O2 -s -fno-ident -flto

s2p2bin: s2p2bin.c clownlzss/common.c clownlzss/kosinski.c clownlzss/memory_stream.c
	$(CC) $(CFLAGS) -o $@ $^
