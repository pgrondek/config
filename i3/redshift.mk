PACKAGE=redshift
BIN=/usr/bin/redshift
ROOT_APT=sudo aptitude

install_redshift: $(BIN)

$(BIN):
	$(ROOT_APT) install $(PACKAGE)

clean_redshift:
	$(ROOT_APT) remove $(PACKAGE)
