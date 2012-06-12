.PHONY: setup

setup: ~/.bash/bashrc ~/.bash/bash_profile
	test -f ~/.bashrc && rm ~/.bashrc || true
	test -f ~/.bash_profile && rm ~/.bash_profile || true
	ln -s ~/.bash/bash_profile ~/.bash_profile
	ln -s ~/.bash/bashrc ~/.bashrc
