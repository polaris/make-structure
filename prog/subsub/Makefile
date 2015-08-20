BIN = subsub
BINDIR = ../../bin
OBJDIR = obj

HEADER =
CXXSOURCE = subsub.cpp
CCSOURCE =

CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic -O3

CXX = g++
CXXFLAGS = $(CFLAGS) -std=c++14

LDFLAGS = -lm

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
