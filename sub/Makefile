BIN = libsub.a
BINDIR = ../bin
OBJDIR = ../obj

HEADER = sub.h
CXXSOURCE = sub.cpp
CCSOURCE = 

CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic -O3

CXX = g++
CXXFLAGS = $(CFLAGS) -std=c++14

OBJ = $(patsubst %.cpp,$(OBJDIR)/%.o,$(CXXSOURCE)) \
	  $(patsubst %.c,$(OBJDIR)/%.o,$(CCSOURCE))

$(OBJDIR)/%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -c -o $@ $<

$(OBJDIR)/%.o: %.cpp $(HEADER)
	$(CXX) $(CXXFLAGS) -c -o $@ $<

$(BINDIR)/$(BIN): $(CXXOBJ) $(OBJ)
	ar rcs $@ $^
