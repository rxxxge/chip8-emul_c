CC=gcc
CFLAGS=-std=c17 -Wall -Wextra -Werror
LIBS=.\SDL2-2.30.3\x86_64-w64-mingw32\lib -lmingw32 -lSDL2main -lSDL2
INCLUDES=.\SDL2-2.30.3\x86_64-w64-mingw32\include\SDL2
# all:
# 	$(CC) chip8.c -o chip8 $(CFLAGS) `sdl2-config --cflags --libs`

all:
	$(CC) chip8.c -o chip8 $(CFLAGS) -L$(LIBS) -I$(INCLUDES)

debug:
	$(CC) -DDEBUG chip8.c -o chip8 $(CFLAGS) -L$(LIBS) -I$(INCLUDES)