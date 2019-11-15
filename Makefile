SERVER_PARTS=bash ssh vim docker
CLIENT_PARTS=i3 packages

.PHONY: clean_install

install: install_server install_client
clean: clean_server clean_client
clean_install: clean install

install_server:
	@$(foreach dir,$(SERVER_PARTS), $(MAKE) install -C $(dir);)

install_client:
	@$(foreach dir,$(CLIENT_PARTS), $(MAKE) install -C $(dir);)

clean_server:
	@$(foreach dir,$(SERVER_PARTS), $(MAKE) clean -C $(dir);)

clean_client:
	@$(foreach dir,$(CLIENT_PARTS), $(MAKE) clean -C $(dir);)

