SUBDIRS = sub prog

BINDIR = bin
OBJDIR = obj

all: subdirs

.PHONY: clean
clean:
	@rm -rf $(BINDIR)
	@rm -rf `find . -name $(OBJDIR) -type d`

.PHONY: subdirs $(SUBDIRS)
subdirs: $(SUBDIRS)

prog: sub

$(SUBDIRS):
	@mkdir -p $(BINDIR)
	@mkdir -p $(OBJDIR)
	@$(MAKE) -C $@
