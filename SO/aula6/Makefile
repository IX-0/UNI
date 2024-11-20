CFLAGS = -Wall -Wextra -lm -g

TARGETS = myActions dirList myCat sortNumbers testfread sortNumbersFile  

all: $(TARGETS)
	[[ -d "bin" ]] || mkdir "bin"
	mv $(TARGETS) "bin"

%: %.c

.PHONY: clean
clean: 
	rm -r "bin"
