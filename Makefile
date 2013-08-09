# File: Makefile
# Author: John Oilar
# Date: 08/06/2013
# Description: Builds SDL samples and test programs.

PROGS = sdl-example-00
COMPILER = g++
CFLAGS = -I/usr/local/include
LIBS = -L/usr/local/lib -lSDL2

all: $(PROGS)

sdl-example-00: sdl-example-00.c
	$(COMPILER) $(CFLAGS) -o sdl-example-00 sdl-example-00.c $(LIBS)

.PHONY: clean
clean:
	rm -f $(PROGS) *.o
