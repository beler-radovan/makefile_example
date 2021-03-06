cc:=gcc
cflags:=-std=c11 -Wall -Werror -g
libs:=-lm
output:=example

obj:=
inc:=src/Makefile.inc
include $(inc)

all: $(output)

$(output): $(obj)
	$(cc) $(cflags) $^ $(libs) -o $@

%.o: %.c
	$(cc) $(cflags) -c $< $(libs) -o $@

.PHONY: build_dir clean
clean:
	rm -rf $(obj) $(output)
