PACKAGE_REDSHIFT=redshift
BIN=/usr/bin/redshift
ROOT_APT=sudo aptitude

install_redshift: $(BIN)

$(BIN):
	$(ROOT_APT) install $(PACKAGE_REDSHIFT)

clean_redshift:
	$(ROOT_APT) remove $(PACKAGE_REDSHIFT)
