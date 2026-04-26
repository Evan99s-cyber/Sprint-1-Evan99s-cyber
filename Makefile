# Use the compiler passed down by Buildroot, or default to standard gcc if testing locally
CC ?= gcc
CFLAGS ?= -Wall -Werror -O2
TARGET = socketserver
SRC = src/server.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f $(TARGET)
