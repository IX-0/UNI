CFLAGS = -Wall -Wextra -lm -g

TARGETS = args1 args2 joinWords joinWordsText altobaixo 

all: $(TARGETS)
	[[ -d "bin" ]] || mkdir "bin"
	mv $(TARGETS) "bin"

%: %.c

.PHONY: clean
clean: 
	rm -r "bin"
	rm *.c
