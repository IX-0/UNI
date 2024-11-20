CFLAGS = -Wall -Wextra -lm -g

TARGETS = Tuga 

all: $(TARGETS)
	[[ -d "bin" ]] || mkdir "bin"
	mv $(TARGETS) "bin"

%: %.c

.PHONY: clean
clean: 
	rm -r "bin"
	rm *.c
