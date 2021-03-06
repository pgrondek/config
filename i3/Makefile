include *.mk

REQUIRED_BINS=\
	/usr/bin/i3 \
	/usr/bin/i3blocks \
	/usr/bin/i3lock \
	/usr/bin/xautolock \
	/usr/bin/dunst \
	/usr/bin/compton \
	/usr/bin/numlockx \
	/usr/bin/gedit \
	/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 \
	/usr/bin/gsimplecal

PACKAGES=\
	i3 \
	i3blocks \
	i3lock \
	dunst \
	compton \
	numlockx \
	gedit \
	xautolock \
	policykit-1-gnome \
	gsimplecal

I3_CONFIG=config
I3_CONFIG_OUT=$(HOME)/.config/i3/config
I3_CONFIG_DIR=$(HOME)/.config/i3

DUNST_CONFIG=dunstrc
DUNST_CONFIG_OUT=$(HOME)/.config/dunst/dunstrc
DUNST_CONFIG_DIR=$(HOME)/.config/dunst

COMPTON_CONFIG=compton.conf
COMPTON_CONFIG_OUT=$(HOME)/.config/compton.conf
COMPTON_CONFIG_DIR=$(HOME)/.config

CUSTOM_BINS= $(wildcard bin/*)
CUSTOM_BINS_DIR=$(HOME)/bin

ROOT_APT=sudo aptitude

OUT=$(I3_CONFIG_OUT) $(DUNST_CONFIG_OUT)

.PHONY: clean_install

clean_install: clean install clean_playerctl clean_redshift
clean: clean_i3 clean_dunst clean_compton clean_i3blocks clean_bins clean_playerctl
install: $(REQUIRED_BINS) install_i3 install_compton install_i3blocks install_bins clean_dunst install_playerctl install_redshift

$(REQUIRED_BINS):
	$(ROOT_APT) install $(PACKAGES)

# i3
clean_i3:
	rm -f $(OUT)

install_i3: $(I3_CONFIG_DIR) $(REQUIRED_BINS)
	cp $(I3_CONFIG) $(I3_CONFIG_OUT)

$(I3_CONFIG_DIR):
	mkdir -p $(I3_CONFIG_DIR)

# i3blocks
install_i3blocks:
	$(MAKE) -C i3blocks install

clean_i3blocks:
	$(MAKE) -C i3blocks clean

# dunst
clean_dunst:
	rm -f $(DUNST_CONFIG_OUT)

# compton
clean_compton:
	rm -f $(COMPTON_CONFIG_OUT)

install_compton: $(COMPTON_CONFIG_DIR)
	cp $(COMPTON_CONFIG) $(COMPTON_CONFIG_OUT)

$(COMPTON_CONFIG_DIR):
	mkdir -p $(COMPTON_CONFIG_DIR)

# bins
install_bins: $(CUSTOM_BINS_DIR)
	cp $(CUSTOM_BINS) $(CUSTOM_BINS_DIR)

clean_bins:
	rm -f $(CUSTOM_BINS:bin%=$(CUSTOM_BINS_DIR)%)

$(CUSTOM_BINS_DIR):
	mkdir -p $(CUSTOM_BINS_DIR)
