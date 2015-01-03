SRCDIR := $(shell pwd)

all: vim git bash

bash:
	rm -f ~/.bash_aliases
	ln -s $(SRCDIR)/.bash_aliases ~/.bash_aliases
	bash -c '[[ `grep -c "bash_aliases" ~/.bashrc` -eq 0 ]] && echo ". ~/.bash_aliases" >> ~/.bashrc || echo "ok" > /dev/null'

git:
	rm -f ~/.gitconfig
	ln -s $(SRCDIR)/.gitconfig ~/.gitconfig

vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s $(SRCDIR)/.vimrc ~/.vimrc
	ln -s $(SRCDIR)/.vim ~/.vim
	vim +PluginInstall +qall
	bash -c 'cd .vim/bundle/vimproc/ && make'

