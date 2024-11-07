# Options for the C compiler. 
CFLAGS += -g -Wall -Wextra

TARGETS = Tests

all: $(TARGETS)

Tree.o: Tree.c Tree.h

Tests.o: Tests.c Tree.h

Tests: Tests.o Tree.o

clean:
	rm -f *.o
	rm $(TARGETS)
