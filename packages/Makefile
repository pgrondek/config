PACKAGES=vim git traceroute command-not-found dnsutils firefox-esr
RM_PACKAGES=nano

APT=aptitude
APTITUDE=/usr/bin/aptitude

install: $(APTITUDE)
	$(APT) update
	$(APT) install -y $(PACKAGES)
	$(APT) purge -y $(RM_PACKAGES)

$(APTITUDE):
	apt update
	apt install -y $(APT)
