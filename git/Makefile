GIT_BIN=/usr/bin/git
PACKAGE=git

CUSTOM_BINS= $(wildcard bin/*)

GIT_CONFIG=config
GIT_CONFIG_OUT=$(HOME)/.config/git/config
GIT_GLOBAL_CONFIG=$(HOME)/.gitconfig
CONFIG_DIR=$(HOME)/.config/git
HOME_BIN_DIR=$(HOME)/bin

ROOT_APT=sudo aptitude

OUT=$(GIT_CONFIG_OUT)

.PHONY: clean_install

clean_install: clean install
install: $(GIT_BIN) install_bins config
clean: clean_config clean_package clean_bins

$(GIT_BIN):
	$(ROOT_APT) install $(PACKAGE)

install_bins: $(HOME_BIN_DIR)
	cp $(CUSTOM_BINS) $(HOME_BIN_DIR)

.ONESHELL:
config: $(CONFIG_DIR) $(GIT_BIN)
ifeq ("$(wildcard $(GIT_GLOBAL_CONFIG))","")
	rm -f $(GIT_CONFIG_OUT)
	echo "Please provide email address for git"
	read EMAIL
	git config --global user.email $${EMAIL}
endif
	cp $(GIT_CONFIG) $(GIT_CONFIG_OUT)

$(CONFIG_DIR):
	mkdir -p $(CONFIG_DIR)

$(HOME_BIN_DIR):
	mkdir -p $(HOME_BIN_DIR)

clean_package:
	$(ROOT_APT) purge $(PACKAGE)

clean_config:
	rm -f $(GIT_CONFIG_OUT)

clean_bins:
	rm -f $(CUSTOM_BINS:bin%=$(HOME_BIN_DIR)%)
