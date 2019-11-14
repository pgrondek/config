PACKAGES=traceroute command-not-found dnsutils
RM_PACKAGES=nano

APT=aptitude
ROOT_APT=sudo $(APT)
APTITUDE=/usr/bin/aptitude

VIM=/usr/bin/vim
GIT=/usr/bin/git
FIREFOX=/usr/bin/firefox
SCREEN=/usr/bin/screen
HTOP=/usr/bin/htop
TMUX=/usr/bin/tmux
GRAPHVIZ=/opt/local/bin/dot

INSTALL=$(ROOT_APT) install -y

install: $(APTITUDE) $(VIM) $(GIT) $(FIREFOX) $(SCREEN) $(HTOP) $(TMUX) $(GRAPHVIZ)
	$(ROOT_APT) update
	$(INSTALL) $(PACKAGES)
	$(ROOT_APT) purge -y $(RM_PACKAGES)

$(APTITUDE):
	sudo apt update
	sudo apt install -y $(APT)

$(VIM): $(APTITUDE)
	$(INSTALL) vim

$(GIT): $(APTITUDE)
	$(INSTALL) git

$(FIREFOX): $(APTITUDE)
ifeq ($(shell lsb_release -i -s), 'Ubuntu')
	$(INSTALL) firefox
else
	$(INSTALL) firefox-esr
endif

$(SCREEN): $(APTITUDE)
	$(INSTALL) screen

$(HTOP): $(APTITUDE)
	$(INSTALL) htop

$(TMUX): $(APTITUDE)
	$(INSTALL) tmux

$(GRAPHVIZ): $(APTITUDE)
	$(INSTALL) graphviz
