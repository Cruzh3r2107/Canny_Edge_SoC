# Clean Makefile for ECPS203

SYSTEMC = /opt/pkg/systemc-2.3.1

INCLUDE = -I. -I$(SYSTEMC)/include
LIBRARY = $(SYSTEMC)/lib-linux64
SYSC_CFLAG = $(INCLUDE) -L$(LIBRARY) -Xlinker -R -Xlinker $(LIBRARY) -lsystemc -O3

CC = g++
RM = rm -f

VIDEO	= Engineering
FRAMES	= $(VIDEO)[0-9][0-9][0-9]_edges.pgm

EXE =	canny

all: $(EXE)

clean:
	$(RM) $(EXE)
	$(RM) *.bak *~
	$(RM) *.o *.ti gmon.out
	$(RM) $(IMG_OUT)
	$(RM) $(FRAMES)

cleanall: clean
	$(RM) *.log

# Assignment 5 
# Test bench model in SystemC

canny: cannyA9_step2.cpp
	$(CC) $(SYSC_CFLAG) $< -o $@

test: canny video/$(FRAMES)
	ulimit -s 128000; ./$<
	set -e; \
	for f in video/$(FRAMES); do \
		diff `basename $$f` $$f; \
	done

# EOF
