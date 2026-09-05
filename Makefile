PREFIX?=/usr/X11R6
CFLAGS?=-Os -march=native -pedantic -Wall

all:
	$(CC) $(CFLAGS) -I$(PREFIX)/include tired.c -L$(PREFIX)/lib -lXcursor -lX11 -o tired
clean:
	sudo rm -f /usr/bin/tired
	sudo rm -f ./tired
install:
	sudo $(CC) $(CFLAGS) -I$(PREFIX)/include tired.c -L$(PREFIX)/lib -lXcursor -lX11 -o /usr/bin/tired
