HOME_BIN_DIR=$(HOME)/bin
HOME_BIN_LINK=$(HOME_BIN_DIR)/arduino

ifeq ("x86_64","$(shell uname -m)")
ARCH=linux64
else
ARCH=unknown
endif

ARDUINO_VERSION=1.8.12
ARDUINO_URL=https://downloads.arduino.cc/arduino-$(ARDUINO_VERSION)-$(ARCH).tar.xz
TMPDIR:=$(shell mktemp -d)

SUDO=sudo
OUT_DIR=/opt/arduino

.PHONY: install

clean: 
	$(SUDO) rm -rf $(OUT_DIR)
	rm -rf $(HOME_BIN_LINK)

install: 
	wget -qO- $(ARDUINO_URL) | tar xJ -C $(TMPDIR)
	$(SUDO) cp -r $(TMPDIR)/arduino-$(ARDUINO_VERSION) $(OUT_DIR)
	$(SUDO) chmod 755 $(OUT_DIR)
	$(SUDO) rm -rf $(TMPDIR)
	ln -s $(OUT_DIR)/arduino $(HOME_BIN_LINK)
