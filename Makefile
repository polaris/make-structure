SUBDIRS = sub prog

all: subdirs

.PHONY: clean
clean:
	@rm -rf bin
	@rm -rf obj

.PHONY: subdirs $(SUBDIRS)
subdirs: $(SUBDIRS)

$(SUBDIRS):
	@mkdir -p bin
	@mkdir -p obj
	@$(MAKE) -C $@
