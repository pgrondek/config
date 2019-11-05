SUB_DIRS=bash i3 packages ssh vim docker

.PHONY: clean_install

install:
	@$(foreach dir,$(SUB_DIRS), $(MAKE) install -C $(dir);)

clean:
	@$(foreach dir,$(SUB_DIRS), $(MAKE) clean -C $(dir);)

clean_install: clean install
