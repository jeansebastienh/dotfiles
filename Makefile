SRCDIR := $(shell pwd)
.PHONY: all bash

all: vim git bash

bash:
	bash -c '[[ `grep -c "bash/aliases/git.sh" ~/.bashrc` -eq 0 ]] && echo ". $(SRCDIR)/bash/aliases/git.sh" >> ~/.bashrc || echo "ok" > /dev/null'

git:
	rm -f ~/.gitconfig
	ln -s $(SRCDIR)/.gitconfig ~/.gitconfig

vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s $(SRCDIR)/.vimrc ~/.vimrc
	ln -s $(SRCDIR)/.vim ~/.vim
	vim +PluginInstall +qall

tmux:
	rm -rf ~/.tmux.conf
	ln -s $(SRCDIR)/.tmux.conf ~/.tmux.conf
