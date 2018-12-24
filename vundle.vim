set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

" used for Ag command
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'

" tags bar
Plugin 'majutsushi/tagbar'

" all around mru, files, buffers
Plugin 'Yggdroot/LeaderF'

" zen mode
Plugin 'junegunn/goyo.vim'

" Async linting
Plugin 'w0rp/ale'

" finally multiple cursors for vim
Plugin 'terryma/vim-multiple-cursors'

" spacemacs-like keybinding menu
Plugin 'liuchengxu/vim-which-key'

"Plugin 'wincent/ferret'
Plugin 'airblade/vim-gitgutter'

Plugin 'vim-scripts/ZoomWin'
"  Press <c-w>o : the current window zooms into a full screen
"  Press <c-w>o again: the previous set of windows is restored

"Plugin 'Valloric/YouCompleteMe'

"Plugin 'scrooloose/nerdcommenter'

Plugin 'mhinz/vim-startify'

Plugin 'skywind3000/asyncrun.vim'

" {{{ PHP
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'stephpy/vim-php-cs-fixer'
" }}}

" {{{ Typescript
Plugin 'leafgarland/typescript-vim.git'
Plugin 'Quramy/tsuquyomi'
" }}}

" C-v ++ / paste: "<n, ..>p
Plugin 'nixon/vim-vmath.git'

Plugin 'terryma/vim-smooth-scroll'

Plugin 'inside/vim-search-pulse'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
