VIMRC=vimrc
VIMRC_OUT=$(HOME)/.vimrc

.PHONY: clean_install

clean_install: clean install

clean:
	rm -f $(VIMRC_OUT)

install:
	cp $(VIMRC) $(VIMRC_OUT)
