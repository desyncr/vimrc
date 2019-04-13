set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugin 'scrooloose/nerdtree'

" used for Ag command
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'

"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

" {{{ git
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'
Plugin 'jreybert/vimagit'
" }}}

" tags bar
Plugin 'majutsushi/tagbar'

" all around mru, files, buffers
Plugin 'Yggdroot/LeaderF'

" zen mode
"Plugin 'junegunn/goyo.vim'

" Async linting
Plugin 'w0rp/ale'

" finally multiple cursors for vim
Plugin 'terryma/vim-multiple-cursors'

" spacemacs-like keybinding menu
Plugin 'liuchengxu/vim-which-key'

"Plugin 'wincent/ferret'
Plugin 'airblade/vim-gitgutter'

"Plugin 'vim-scripts/ZoomWin'
Plugin 'regedarek/ZoomWin'
"  Press <c-w>o : the current window zooms into a full screen
"  Press <c-w>o again: the previous set of windows is restored

"Plugin 'Valloric/YouCompleteMe'

"Plugin 'scrooloose/nerdcommenter'

Plugin 'mhinz/vim-startify'

Plugin 'skywind3000/asyncrun.vim'

" {{{ PHP
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'StanAngeloff/php.vim'
"Plugin 'lvht/phpfold.vim'
Plugin 'rafi/vim-phpspec'
Plugin 'php-vim/phpcd.vim'
" }}}

" {{{ Typescript
Plugin 'leafgarland/typescript-vim.git'
Plugin 'Quramy/tsuquyomi'
" }}}

" C-v ++ / paste: "<n, ..>p
"Plugin 'nixon/vim-vmath.git'

"Plugin 'terryma/vim-smooth-scroll'
"Plugin 'inside/vim-search-pulse'

"Plugin 'Valloric/YouCompleteMe'

" :MundoShow - vim undo visualization
Plugin 'simnalamburt/vim-mundo'

"Plugin 'tpope/vim-surround'
"Plugin 'jiangmiao/auto-pairs'

"Plugin 'amiorin/vim-project'

Plugin 'itchyny/lightline.vim'
"Plugin 'junegunn/limelight.vim'

"Plugin 'takac/vim-hardtime'

"Plugin 'MattesGroeger/vim-bookmarks'
" Does not integrates well with LeaderF
"Plugin 'Shougo/defx.nvim'
"Plugin 'roxma/nvim-yarp'
"Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'Shougo/vimfiler.vim'
"Plugin 't9md/vim-choosewin'
Plugin 'Shougo/unite.vim'

" Themes
"Plugin 'axvr/photon.vim'
"Plugin 'liuchengxu/space-vim-theme'
"Plugin 'nightsense/cosmic_latte'
"Plugin 'kmszk/skyhawk'
"Plugin 'Nequo/vim-allomancer'
Plugin 'caksoylar/vim-mysticaltutor'

" All of your Plugins must be added before the following line
call vundle#end()            " required

