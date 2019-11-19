NODE_PACKAGES=nodejs
VERSION=node_12.x
NODE_BIN=/usr/bin/nodejs

ROOT_TEE=sudo tee
ROOT_APT=sudo aptitude
ROOT_ADD_KEY=sudo apt-key
ROOT_ADD_USER_TO_GROUP=sudo adduser
ROOT_ADD_PPA=add-apt-repository -y
RELEASE:=$(shell lsb_release -cs)

clean:
	-$(ROOT_APT) -y purge $(NODE_PACKAGES)
	-$(ROOT_ADD_PPA) -i ppa:chris-lea/node.js
	-sudo rm -f /etc/apt/sources.list.d/chislea-node_js-*.list
	-sudo rm -f /etc/apt/sources.list.d/chislea-node_js-*.list.save

install: $(NODE_BIN)

$(NODE_BIN):
	curl -fsSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | $(ROOT_ADD_KEY) add -
	echo "deb https://deb.nodesource.com/$(VERSION) $(RELEASE) main" | $(ROOT_TEE) /etc/apt/sources.list.d/nodesource.list
	echo "deb-src https://deb.nodesource.com/$(VERSION) $(RELEASE) main" | $(ROOT_TEE) -a /etc/apt/sources.list.d/nodesource.list
	$(ROOT_APT) update
	$(ROOT_APT) install -y $(NODE_PACKAGES)
