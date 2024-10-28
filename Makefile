CC = gcc
CFLAGS = -fPIC
TARGET = libhttp.so
OBJECTS = libhttp.o

all: $(TARGET)

$(TARGET): $(OBJECTS)
    $(CC) -shared -o $@ $^

clean:
    rm -f $(OBJECTS) $(TARGET)
