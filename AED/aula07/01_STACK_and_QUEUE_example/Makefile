# To compile all programs, run:
#   make
# 
# JMR 2021, JMadeira 2023


# Options for the C compiler. 
CFLAGS += -g -Wall -Wextra

TARGETS = 01_example

all: $(TARGETS)

IntegersQueue.o : IntegersQueue.c IntegersQueue.h

IntegersStack.o : IntegersStack.c IntegersStack.h

01_example : IntegersStack.o IntegersQueue.o

clean:
	rm -f *.o
	rm -f $(TARGETS)
