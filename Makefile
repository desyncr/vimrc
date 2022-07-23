SHELL       ?= bash
PREFIX      ?= ~/.vim
VIMRC       ?= ~/.vimrc
CONFIG      ?= ${PREFIX}/vimrc.vim
VIMPLUG_REPO  ?= https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

install:
	ln -s ${PWD} ${PREFIX}
	ln -s ${CONFIG} ${VIMRC}
	mkdir -p ${PREFIX}/.backup ${PREFIX}/.swap ${PREFIX}/.undo
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs ${VIMPLUG_REPO}
	vim +PlugInstall

uninstall:
	rm ${VIMRC}
	rm ${PREFIX}
