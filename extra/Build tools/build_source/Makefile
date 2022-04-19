CFLAGS := -std=c99 -O2 -s -fno-ident -flto -Wall -Wextra -pedantic -Wshift-overflow=2

s2p2bin: s2p2bin.c clownlzss/common.c clownlzss/kosinski.c clownlzss/memory_stream.c
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)
