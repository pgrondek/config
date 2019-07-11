AUTHORIZED_KEYS=authorized_keys
SSH_FOLDER=$(HOME)/.ssh
SSH_FOLDER_MOD=0700

.PHONY: clean_install

clean_install: clean install

$(SSH_FOLDER):
	mkdir -p $(SSH_FOLDER)
	chown $(SSH_FOLDER_MOD) $(SSH_FOLDER)

install: $(SSH_FOLDER)
	cp $(AUTHORIZED_KEYS) $(SSH_FOLDER)

clean:
	rm $(SSH_FOLDER)/$(AUTHORIZED_KEYS)