CC=gcc
CFLAGS=-Ofast -march=native -funroll-loops
TARGET=cell_auto

all: $(TARGET)

$(TARGET): cell_auto.c
	$(CC) $(CFLAGS) -o $(TARGET) cell_auto.c

clean:
	rm -f $(TARGET)