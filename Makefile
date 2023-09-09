CC=g++
EXECS=bin/engine
LIB=
CFLAGS=-std=c++11 -O2
LDFLAGS=-lglfw -lpthread -ldl -lX11 -lXxf86vm -lXrandr -lXi

all: $(EXECS)

clean:
	rm -f bin/* obj/* lib/*

run: $(EXECS)
	./bin/engine

$(EXECS): src/engine.cc
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)
