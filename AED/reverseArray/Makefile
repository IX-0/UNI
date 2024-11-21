CFLAGS = -Wall -Wextra -lm -g

TARGETS = reverse copyArray arrayEstranho 

all: $(TARGETS)
	[[ -d "bin" ]] || mkdir "bin"
	mv $(TARGETS) "bin"

%: %.c

.PHONY: clean
clean: 
	rm -r "bin"
