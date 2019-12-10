ifeq ("x86_64", "$(shell uname -m)")
VERSION=linux64
else ifeq ("i386", "$(shell uname -m)")
VERSION=linux32
endif

SNAP_BIN=/usr/bin/snap
ROOT_SNAP=sudo snap
SNAP_PACKAGE=postman

RELEASE:=$(shell lsb_release -cs)

clean: 
	$(ROOT_SNAP) remove $(SNAP_PACKAGE)

install: 
ifeq ("$(wildcard $(SNAP_BIN))", "")
# no snap
else 
	$(MAKE) install_snap
endif

install_snap:
	$(ROOT_SNAP) install $(SNAP_PACKAGE)

force_update: clean install
