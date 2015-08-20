BINDIR = ../bin
OBJDIR = obj

HEADER = foo.h bar.h
CXXSOURCE = main.cpp foo.cpp
CCSOURCE = bar.c
OBJLIBS = $(BINDIR)/libsub.a $(BINDIR)/libsubsub.a

CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic -O3 -I../sub -I../sub/subsub

CXX = g++
CXXFLAGS = $(CFLAGS) -std=c++14

LDFLAGS = $(OBJLIBS) -lm

OBJ = $(patsubst %.cpp,$(OBJDIR)/%.o,$(CXXSOURCE)) \
	$(patsubst %.c,$(OBJDIR)/%.o,$(CCSOURCE))


$(BINDIR)/prog: $(CXXOBJ) $(OBJ) $(OBJLIBS)
	@mkdir -p $(BINDIR)
	$(CXX) -o $@ $^ $(LDFLAGS)
.PHONY: prog
prog: $(BINDIR)/prog


$(OBJDIR)/%.o: %.c $(HEADER)
	@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c -o $@ $<
$(OBJDIR)/%.o: %.cpp $(HEADER)
	@mkdir -p $(OBJDIR)
	$(CXX) $(CXXFLAGS) -c -o $@ $<

.PHONY: clean
clean:
	@rm -rf `find . -name $(OBJDIR) -type d`
