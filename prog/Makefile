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
	$(CC) $(CFLAGS) -c -o $@ $<

$(OBJDIR)/%.o: %.cpp $(HEADER)
	$(CXX) $(CXXFLAGS) -c -o $@ $<

$(BINDIR)/$(BIN): $(CXXOBJ) $(OBJ)
	$(CXX) -o $@ $^ $(LDFLAGS)
