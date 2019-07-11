CONFIG=config
CONFIG_OUT=$(HOME)/.config/i3blocks/config
CONFIG_DIR=$(HOME)/.config/i3blocks
BLOCKS := $(wildcard blocks/*)

OUT=$(I3_CONFIG_OUT)

.PHONY: clean_install

clean_install: clean install

clean:
	rm -rf $(CONFIG_OUT)
	rm -rf $(CONFIG_DIR)

install: $(CONFIG_DIR)
	cp $(CONFIG) $(CONFIG_OUT)
	cp $(BLOCKS) $(CONFIG_DIR)

$(CONFIG_DIR):
	mkdir -p $(CONFIG_DIR)
