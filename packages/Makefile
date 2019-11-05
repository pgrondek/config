PACKAGES=vim git traceroute command-not-found dnsutils firefox screen htop
RM_PACKAGES=nano

APT=aptitude
ROOT_APT=sudo $(APT)
APTITUDE=/usr/bin/aptitude

install: $(APTITUDE)
	$(ROOT_APT) update
	$(ROOT_APT) install -y $(PACKAGES)
	$(ROOT_APT) purge -y $(RM_PACKAGES)

$(APTITUDE):
	sudo apt update
	sudo apt install -y $(APT)
