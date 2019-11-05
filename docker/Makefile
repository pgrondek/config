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

HOME_BIN_DIR=$(HOME)/bin

DOCKER_BIN=/usr/bin/docker
DOCKER_COMPOSE_BIN=$(HOME_BIN_DIR)/docker-compose
DOCKER_REPO_FILE=/etc/apt/sources.list.d/docker.list

ROOT_TEE=sudo tee
ROOT_APT=sudo aptitude
ROOT_ADD_KEY=sudo apt-key
ROOT_ADD_USER_TO_GROUP=sudo adduser
RELEASE:=$(shell lsb_release -cs)

clean:
	-docker system prune
	-$(ROOT_APT) remove $(DOCKER_PACKAGES)
	sudo rm -f $(DOCKER_COMPOSE_BIN)
	sudo rm -f $(DOCKER_REPO_FILE)
	-$(ROOT_ADD_KEY) del Docker

install: install_docker install_compose
install_docker: $(DOCKER_BIN) 
install_compose: $(DOCKER_COMPOSE_BIN)

$(DOCKER_BIN):
	-$(ROOT_APT) remove $(CLEAN_PACKAGES)
	$(ROOT_APT) update
	$(ROOT_APT) install -y $(REQUIRED_PACKAGES)
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | $(ROOT_ADD_KEY) add -
	echo "deb https://download.docker.com/linux/ubuntu $(RELEASE) stable" \
		| $(ROOT_TEE) $(DOCKER_REPO_FILE)
	$(ROOT_APT) update
	$(ROOT_APT) install -y $(DOCKER_PACKAGES)
	$(ROOT_ADD_USER_TO_GROUP) $(shell id -nu) docker


$(DOCKER_COMPOSE_BIN): $(HOME_BIN_DIR)
	curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(shell uname -s)-$(shell uname -m)" -o $(DOCKER_COMPOSE_BIN)
	chmod +x $(DOCKER_COMPOSE_BIN)

$(HOME_BIN_DIR):
	mkdir -p $(HOME_BIN_DIR)
