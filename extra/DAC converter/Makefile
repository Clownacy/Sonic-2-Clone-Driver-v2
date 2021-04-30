CFLAGS = -O2 -s -Wall -Wextra -pedantic

all: dac-converter-pcm dac-converter-dpcm

dac-converter-pcm: main.c
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@ $(LIBS)

dac-converter-dpcm: main.c
	$(CC) $(CFLAGS) $(LDFLAGS) -DDPCM_MODE $^ -o $@ $(LIBS)
