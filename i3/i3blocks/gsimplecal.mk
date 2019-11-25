CONFIG_DIR=$(HOME)/.config/gsimplecal

CONFIG_FILE=gsimplecal.config

install_gsimplecal: $(CONFIG_DIR)
	cp $(CONFIG_FILE) $(CONFIG_DIR)/config

clean_gsimplecal:
	rm -rf $(CONFIG_DIR)

$(CONFIG_DIR):
	mkdir -p $(CONFIG_DIR)
