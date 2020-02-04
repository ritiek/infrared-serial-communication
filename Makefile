ARMGNU ?= gcc
ARGS ?= -Wall

all : bin/transmit-ir bin/receive-ir

clean :
	rm -f bin/transmit-ir
	rm -f bin/receive-ir
	rm -rf bin

bin/transmit-ir : src/transmit.c
	mkdir -p bin
	$(ARMGNU) $(ARGS) -lwiringPi -o bin/transmit-ir src/transmit.c src/util/util.c

bin/receive-ir : src/receive.c
	mkdir -p bin
	$(ARMGNU) $(ARGS) -lwiringPi -o bin/receive-ir src/receive.c src/util/util.c
