PACKAGE_PLAYERCTL=playerctl
GITHUB_VERSION=2.0.2
GITHUB_URL=https://github.com/altdesktop/playerctl/releases/download/v$(GITHUB_VERSION)/playerctl-$(GITHUB_VERSION)_amd64.deb

BIN=/usr/bin/playerctl
ROOT_APT=sudo aptitude

install_playerctl: $(BIN)

$(BIN):
ifeq ($(shell aptitude search $(PACKAGE_PLAYERCTL) 2&> /dev/null; echo $?), 0)
	$(ROOT_APT) install $(PACKAGE_PLAYERCTL)
else
	$(eval TMP = $(shell mktemp -d))
	curl -fsSL $(GITHUB_URL) -o $(TMP)/playerctl.deb
	chmod -R a+rx $(TMP)
	sudo apt install $(TMP)/playerctl.deb
	rm -rf $(TMP)
endif

clean_playerctl:
	$(ROOT_APT) remove $(PACKAGE_PLAYERCTL)
