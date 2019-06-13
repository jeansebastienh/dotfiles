SRCDIR := $(shell pwd)
.PHONY: all bash

all: install vim git bash tmux ack gpg

install:
	sudo dnf -y install tmux vim ack git

bash:
	bash -c '[[ `grep -c "bash/aliases/git.sh" ~/.bashrc` -eq 0 ]] && echo ". $(SRCDIR)/bash/aliases/git.sh" >> ~/.bashrc || echo "ok" > /dev/null'

git:
	rm -f ~/.gitconfig
	ln -s $(SRCDIR)/.gitconfig ~/.gitconfig
	rm -f ~/.gitignore
	ln -s $(SRCDIR)/gitignore_global ~/.gitignore

vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s $(SRCDIR)/.vimrc ~/.vimrc
	ln -s $(SRCDIR)/.vim ~/.vim
	vim +PluginInstall +qall

tmux:
	rm -rf ~/.tmux.conf
	ln -s $(SRCDIR)/.tmux.conf ~/.tmux.conf

ack:
	rm -rf ~/.ackrc
	ln -s $(SRCDIR)/.ackrc ~/.ackrc

gpg:
	rm -rf ~/.gnupg/gpg.conf
	mkdir -p --mode=700 ~/.gnupg
	ln -s $(SRCDIR)/gpg.conf ~/.gnupg/gpg.conf
