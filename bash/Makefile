BASH_ALIASES=.bash_aliases
BASH_ALIASES_OUT=$(HOME)/.bash_aliases
BASHRC=bashrc
BASHRC_OUT=$(HOME)/.bashrc

.PHONY: clean_install

clean_install: clean install

clean:
	rm -f $(BASH_ALIASES_OUT) $(BASHRC_OUT)

install:
	cp $(BASH_ALIASES) $(BASH_ALIASES_OUT)
	cp $(BASHRC) $(BASHRC_OUT)
