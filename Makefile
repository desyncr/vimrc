SHELL	    = bash
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
docs:
	cat mappings.vim | head -n 10 | tail -n 9 | sed  's/" //' | sed 's/ {{{{//'|sed 's/}}}//'
build:
	cat vundle.vim | sed -n "s/^[ P].*lugin .*\/\(.*\)\'/\1/p" | xargs mkdir -p
