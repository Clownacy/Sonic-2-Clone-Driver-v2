CFLAGS := -O3 -s -std=c99

s2p2bin: s2p2bin.c clownlzss/clownlzss.c clownlzss/kosinski.c clownlzss/memory_stream.c
	$(CC) $(CFLAGS) -o $@ $^
