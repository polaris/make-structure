BINDIR = ../../bin
OBJDIR = obj

HEADER = subsub.h
CXXSOURCE = subsub.cpp
CCSOURCE = 

CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic -O3

CXX = g++
CXXFLAGS = $(CFLAGS) -std=c++14

OBJ = $(patsubst %.cpp,$(OBJDIR)/%.o,$(CXXSOURCE)) \
	$(patsubst %.c,$(OBJDIR)/%.o,$(CCSOURCE))


$(BINDIR)/libsubsub.a: $(CXXOBJ) $(OBJ)
	@mkdir -p $(BINDIR)
	ar rcs $@ $^
.PHONY: libsubsub.a
libsubsub.a: $(BINDIR)/libsubsub.a


$(OBJDIR)/%.o: %.c $(HEADER)
	@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c -o $@ $<
$(OBJDIR)/%.o: %.cpp $(HEADER)
	@mkdir -p $(OBJDIR)
	$(CXX) $(CXXFLAGS) -c -o $@ $<


.PHONY: clean
clean:
	@rm -rf `find . -name $(OBJDIR) -type d`
