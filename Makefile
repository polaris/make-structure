BINDIR = bin
OBJDIR = obj


all: $(BINDIR)/prog $(BINDIR)/libsub.a $(BINDIR)/libsubsub.a


$(BINDIR)/libsub.a: force_look
	@cd sub; $(MAKE) $(MAKEFLAGS) $(notdir $@)
.PHONY: libsub.a
libsub.a: $(BINDIR)/libsub.a


$(BINDIR)/libsubsub.a: force_look
	@cd sub; $(MAKE) $(MAKEFLAGS) $(notdir $@)
.PHONY: libsubsub.a
libsubsub.a: $(BINDIR)/libsubsub.a


$(BINDIR)/prog: force_look $(BINDIR)/libsub.a $(BINDIR)/libsubsub.a
	@cd prog; $(MAKE) $(MAKEFLAGS)
.PHONY: prog
prog: $(BINDIR)/prog


.PHONY: force_look
force_look:
	@true


.PHONY: clean
clean:
	@rm -rf $(BINDIR)
	@rm -rf `find . -name $(OBJDIR) -type d`
