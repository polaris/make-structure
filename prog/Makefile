BIN = prog
BINDIR = ../bin
OBJDIR = ../obj

HEADER = foo.h bar.h
CXXSOURCE = main.cpp foo.cpp
CCSOURCE = bar.c

CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic -O3 -I../sub

CXX = g++
CXXFLAGS = $(CFLAGS) -std=c++14

LDFLAGS = $(BINDIR)/libsub.a -lm

OBJ = $(patsubst %.cpp,$(OBJDIR)/%.o,$(CXXSOURCE)) \
	  $(patsubst %.c,$(OBJDIR)/%.o,$(CCSOURCE))

$(OBJDIR)/%.o: %.c $(HEADER)
	@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c -o $@ $<

$(OBJDIR)/%.o: %.cpp $(HEADER)
	@mkdir -p $(OBJDIR)
	$(CXX) $(CXXFLAGS) -c -o $@ $<

$(BINDIR)/$(BIN): $(CXXOBJ) $(OBJ)
	@mkdir -p $(BINDIR)
	$(CXX) -o $@ $^ $(LDFLAGS)
