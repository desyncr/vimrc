set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" {{{ essentials
" startup screen with mru, projects etc
Plugin 'mhinz/vim-startify'
" all around mru, files, buffers
Plugin 'Yggdroot/LeaderF'
" spacemacs-like keybinding menu
Plugin 'liuchengxu/vim-which-key'
" Per project dir settings
Plugin 'amiorin/vim-project'

" file browser
Plugin 'Shougo/vimfiler.vim'
"Plugin 't9md/vim-choosewin'
Plugin 'Shougo/unite.vim'
" }}}

" {{{ git
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'
Plugin 'jreybert/vimagit'
Plugin 'airblade/vim-gitgutter'

" brew install tig
Plugin 'iberianpig/tig-explorer.vim'
" }}}

" tags bar
Plugin 'majutsushi/tagbar'

" zen mode
"Plugin 'junegunn/goyo.vim'

" Async linting
Plugin 'w0rp/ale'

" finally multiple cursors for vim
Plugin 'terryma/vim-multiple-cursors'

"Plugin 'wincent/ferret'

"Plugin 'vim-scripts/ZoomWin'
Plugin 'regedarek/ZoomWin'
"  Press <c-w>o : the current window zooms into a full screen
"  Press <c-w>o again: the previous set of windows is restored

"Plugin 'Valloric/YouCompleteMe'

"Plugin 'scrooloose/nerdcommenter'

Plugin 'skywind3000/asyncrun.vim'
Plugin 'itchyny/lightline.vim'

" {{{ PHP
Plugin 'stephpy/vim-php-cs-fixer'
Plugin '2072/PHP-Indenting-for-VIm'
"Plugin 'rayburgemeestre/phpfolding.vim'
"Plugin 'shawncplus/phpcomplete.vim'
"Plugin 'StanAngeloff/php.vim'
"Plugin 'lvht/phpfold.vim'
"Plugin 'rafi/vim-phpspec'
Plugin 'php-vim/phpcd.vim'
" }}}

" {{{ Typescript
"Plugin 'leafgarland/typescript-vim.git'
"Plugin 'Quramy/tsuquyomi'
" }}}

" C-v ++ / paste: "<n, ..>p
"Plugin 'nixon/vim-vmath.git'

"Plugin 'terryma/vim-smooth-scroll'
"Plugin 'inside/vim-search-pulse'

"Plugin 'Valloric/YouCompleteMe'

" :MundoShow - vim undo visualization
"Plugin 'simnalamburt/vim-mundo'

"Plugin 'tpope/vim-surround'
"Plugin 'jiangmiao/auto-pairs'

"Plugin 'junegunn/limelight.vim'

"Plugin 'takac/vim-hardtime'

"Plugin 'MattesGroeger/vim-bookmarks'
" Does not integrates well with LeaderF
"Plugin 'Shougo/defx.nvim'
"Plugin 'roxma/nvim-yarp'
"Plugin 'roxma/vim-hug-neovim-rpc'

" used for Ag command
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'


" Themes
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'axvr/photon.vim'
"Plugin 'liuchengxu/space-vim-theme'
"Plugin 'nightsense/cosmic_latte'
"Plugin 'kmszk/skyhawk'
"Plugin 'Nequo/vim-allomancer'
Plugin 'caksoylar/vim-mysticaltutor'

" All of your Plugins must be added before the following line
call vundle#end()            " required

