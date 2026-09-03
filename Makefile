PREFIX?=/usr/X11R6
CFLAGS?=-Os -pedantic -Wall

all:
	$(CC) $(CFLAGS) -I$(PREFIX)/include tired.c -L$(PREFIX)/lib -lX11 -o tired

clean:
	rm -f tired

