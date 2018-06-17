set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugin 'tpope/vim-fugitive'
"Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'mileszs/ack.vim'

source ~/.vim/imported.vundle.vim

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
