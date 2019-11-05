CLEAN_PACKAGES=\
	docker \
	docker-engine \
	docker.io \
	containerd \
	runc

REQUIRED_PACKAGES=\
	apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

DOCKER_PACKAGES=\
	docker-ce \
	docker-ce-cli \
	containerd.io

ROOT_APT=sudo aptitude
ROOT_ADD_KEY=sudo apt-key
ROOT_ADD_APT=sudo add-apt-repository
ROOT_ADD_USER_TO_GROUP=adduser
RELEASE:=$(shell lsb_release -cs)

clean:
	$(ROOT_APT) remove $(CLEAN_PACKAGES)

install:
	$(ROOT_APT) update
	$(ROOT_APT) install -y $(REQUIRED_PACKAGES)
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | $(ROOT_ADD_KEY) add -
	$(ROOT_ADD_APT) \
		"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	    $(RELEASE) \
		stable"
	$(ROOT_APT) update
	$(ROOT_APT) install -y $(DOCKER_PACKAGES)
	$(ROOT_ADD_USER_TO_GROUP) $(shell id -nu) docker
