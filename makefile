C = gcc
OBJS = conio.o minesweeper.o
HEADERS = conio.h
TARGET = minesweeper 
FILES = conio.c minesweeper.c

all: $(TARGET)
 
$(TARGET): $(OBJS)
	$(CC) -o $@ $^

%.o: %.c
	$(CC) -c $<

$(OBJS): $(HEADERS)

.PHONY: all clean

clean:
	$(RM) $(OBJS) $(TARGET)
