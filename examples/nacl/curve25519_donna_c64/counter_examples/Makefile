CFLAGS=-O3 -fomit-frame-pointer
LFLAGS=

.PHONY: clean

TARGET= counter_fdifference_backwards

all: $(TARGET)
counter_fdifference_backwards: counter_fdifference_backwards.c
	gcc $(CFLAGS) $^ -o $@.o $(LFLAGS)

clean:
	rm *.o

