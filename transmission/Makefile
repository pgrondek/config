REQUIRED_BINS=/usr/bin/transmission-cli
PACKAGES=transmission-cli

CUSTOM_BINS=transmission-add
CUSTOM_BINS_DIR=$(HOME)/bin

MIMEAPPS_LIST=$(HOME)/.config/mimeapps.list
APPLICATIONS_MIMEAPPS_LIST=$(HOME)/.local/share/applications/mimeapps.list

TRANSMISSION_MIME=mimeapps.list
TRANSMISSION_DESKTOP_ENTRY=transmission-remote.desktop
TRANSMISSION_DESKTOP_ENTRY_OUT=$(HOME)/.local/share/applications/transmission-remote.desktop

ROOT_APT=sudo aptitude

OUT=$(I3_CONFIG_OUT) $(DUNST_CONFIG_OUT)

.PHONY: clean_install

clean_install: clean install
clean: clean_mime clean_bins
install: $(REQUIRED_BINS) install_mime install_bins

$(REQUIRED_BINS):
	$(ROOT_APT) install $(PACKAGES)

# setup mime
install_mime: clean_mime
	cat $(TRANSMISSION_MIME) > $(APPLICATIONS_MIMEAPPS_LIST)
	cp $(TRANSMISSION_DESKTOP_ENTRY) $(TRANSMISSION_DESKTOP_ENTRY_OUT)

clean_mime:
	sed -i '/x-scheme-handler\/magnet/d' $(MIMEAPPS_LIST)
	sed -i '/x-scheme-handler\/magnet/d' $(APPLICATIONS_MIMEAPPS_LIST)
	sed -i '/application\/x-bittorrent/d' $(MIMEAPPS_LIST)
	sed -i '/application\/x-bittorrent/d' $(APPLICATIONS_MIMEAPPS_LIST)
	rm -f $(TRANSMISSION_DESKTOP_ENTRY_OUT)

# bins
install_bins: $(CUSTOM_BINS_DIR)
	cp $(CUSTOM_BINS) $(CUSTOM_BINS_DIR)

clean_bins:
	rm -f $(CUSTOM_BINS:%=$(CUSTOM_BINS_DIR)/%)

$(CUSTOM_BINS_DIR):
	mkdir -p $(CUSTOM_BINS) $(CUSTOM_BINS_DIR)
