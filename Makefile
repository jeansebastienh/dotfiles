SRCDIR := $(shell pwd)

all: vim git

git:
	rm -f ~/.gitconfig
	ln -s $(SRCDIR)/.gitconfig ~/.gitconfig

vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s $(SRCDIR)/.vimrc ~/.vimrc
	ln -s $(SRCDIR)/.vim ~/.vim

