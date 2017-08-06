PREFIX      ?= ~/.vim
VIMRC       ?= ~/.vimrc
VUNDLE_PATH ?= ${PREFIX}/bundle/Vundle.vim
CONFIG      ?= ${PREFIX}/vimrc.vim
VUNDLE_GIT  ?= https://github.com/VundleVim/Vundle.vim.git

install:
	ln -s ${PWD} ${PREFIX}
	ln -s ${CONFIG} ${VIMRC}
	git clone ${VUNDLE_GIT} ${VUNDLE_PATH}
uninstall:
	rm ${VIMRC}
	rm ${PREFIX}
	rm -r ${PWD}/bundle
