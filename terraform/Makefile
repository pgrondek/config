HOME_BIN_DIR=$(HOME)/bin

ifeq ("x86_64","$(shell uname -m)")
ARCH=amd64
else
ARCH=unknown
endif

TERRAFORM_BIN=$(HOME_BIN_DIR)/terraform
TERRAFORM_VERSION=0.12.16
TERRAFORM_URL=https://releases.hashicorp.com/terraform/$(TERRAFORM_VERSION)/terraform_$(TERRAFORM_VERSION)_linux_$(ARCH).zip

.PHONY: install

clean: 
	rm -f $(TERRAFORM_BIN)

install: 
ifeq ("$(wildcard $(TERRAFORM_BIN))","")
	$(MAKE) download_install_terraform
else ifneq ($(shell terraform -v | awk -F'[v]' '{print $$2}'), $(TERRAFORM_VERSION))
	$(MAKE) download_install_terraform
endif

force_update_compose: clean_compose install_compose

download_install_terraform: $(HOME_BIN_DIR)
	wget -qO- $(TERRAFORM_URL) | gunzip -c - > $(TERRAFORM_BIN)
	chmod +x $(TERRAFORM_BIN)

$(HOME_BIN_DIR):
	mkdir -p $(HOME_BIN_DIR)
