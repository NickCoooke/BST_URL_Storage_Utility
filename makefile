CC=g++
CFLAGS=-Wall -Wshadow -Wextra -g -c -std=c++11
LDFLAGS=
SOURCES=main.cpp tree.cpp site.cpp  
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=a

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm *o
	rm $(EXECUTABLE)
