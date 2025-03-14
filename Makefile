.PHONY: all clean build

CC = gcc
CFLAGS = -Wall -Wextra -std=c11

BINDIR = bin
BINARY = $(BINDIR)/example

OBJS = main.o module1.o module2.o module3.o

# Default target: build the executable in bin/
all: $(BINARY)

$(BINDIR):
	mkdir -p $(BINDIR)

$(BINARY): $(OBJS) | $(BINDIR)
	$(CC) $(CFLAGS) -o $(BINARY) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(BINARY)

build: clean all
