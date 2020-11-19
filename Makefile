CC = g++
CFLAGS = -g
TARGET = ping_range.exe

$(TARGET): main.o ping_range.o
	$(CC) $(CFLAGS) $^ -o $@

main.o: main.cpp
	$(CC) $(CFLAGS) $^ -c

ping_range.o: ping_range.cpp ping_range.h
	$(CC) $(CFLAGS) $^ -c

clean:
	del ping_range.o main.o $(TARGET)