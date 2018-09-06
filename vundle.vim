set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
"Plugin 'mileszs/ack.vim'

"Plugin 'majutsushi/tagbar'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-fugitive'
Plugin 'yegappan/mru'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'DavidEGx/ctrlp-smarttabs'

Plugin 'liuchengxu/vim-which-key'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
