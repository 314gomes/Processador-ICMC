Files = main.cpp View.cpp Controller.cpp Sound.cpp Model.cpp
CFLAGS = -DGSEAL_ENABLE -pthread -Wall -lgthread-2.0 -lSDL2

all:
	g++ $(Files) -O3 -g -march=native -o sim `pkg-config --libs --cflags gtk+-3.0` $(CFLAGS)

gtk4:
	g++ $(Files) -O3 -march=native -o sim `pkg-config --libs --cflags gtk4` $(CFLAGS)