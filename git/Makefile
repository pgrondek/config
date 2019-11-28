GIT_BIN=/usr/bin/git
PACKAGE=git

GIT_CONFIG=config
GIT_CONFIG_OUT=$(HOME)/.config/git/config
GIT_GLOBAL_CONFIG=$(HOME)/.gitconfig
CONFIG_DIR=$(HOME)/.config/git

ROOT_APT=sudo aptitude

OUT=$(GIT_CONFIG_OUT)

.PHONY: clean_install

clean_install: clean install 
install: $(GIT_BIN) config
clean: clean_config clean_package

$(GIT_BIN):
	$(ROOT_APT) install $(PACKAGE)

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

clean_package:
	$(ROOT_APT) purge $(PACKAGE)

clean_config:
	rm -f $(GIT_CONFIG_OUT)

