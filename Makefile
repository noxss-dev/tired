PREFIX?=/usr/X11R6
CFLAGS?=-Os -march=native -pedantic -Wall

all:
	$(CC) $(CFLAGS) -I$(PREFIX)/include tired.c -L$(PREFIX)/lib -lXcursor -lX11 -o tired

clean:
	rm -f tired

