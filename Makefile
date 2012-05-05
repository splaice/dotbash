.PHONY: setup

setup: ~/.bash/bashrc ~/.bash/bash_profile
	rm ~/.bashrc
	rm ~/.bash_profile
	ln -s ~/.bash/bash_profile ~/.bash_profile
	ln -s ~/.bash/bashrc ~/.bashrc
