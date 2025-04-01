# CC = $(CROSS_COMPILE)gcc
# CFLAGS = -Wall -Wextra -Werror -std=c11
# TARGET = writer
# SRC = writer.c
# OBJ = $(SRC:.c=.o)

# all: $(TARGET)

# $(TARGET): $(OBJ)
# 	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

# %.o: %.c
# 	$(CC) $(CFLAGS) -c $< -o $@

# clean:
# 	rm -f $(TARGET) $(OBJ)

# .PHONY: all clean

all: clean
	gcc -g -Wall -c -o writer.o writer.c
	gcc -g -Wall -I/ -o writer writer.o 

clean:
	rm -f writer.o writer
