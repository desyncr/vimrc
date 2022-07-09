set      nocompatible " be iMproved, required
filetype off          " required

" set the runtime path to include Vundle and initialize
set  rtp+=~/.vim/bundle/Vundle.vim
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
    Plugin 'Shougo/unite.vim'
    " griw
    "Plugin 'vim-scripts/ReplaceWithRegister'
" }}}

" {{{ Git
    Plugin 'tpope/vim-fugitive'
    Plugin 'junegunn/gv.vim'
    "Plugin 'jreybert/vimagit'
    Plugin 'airblade/vim-gitgutter'
    "Plugin 'idanarye/vim-merginal'
    " brew install tig
    "Plugin  'iberianpig/tig-explorer.vim'
" }}}

" {{{ Other
    " tags bar
    Plugin 'majutsushi/tagbar'
    "Plugin 'ervandew/supertab'

    " Async linting
    Plugin 'w0rp/ale'
    " finally multiple cursors for vim
    Plugin 'terryma/vim-multiple-cursors'
    Plugin 'regedarek/ZoomWin'

    Plugin 'skywind3000/asyncrun.vim'

    " advanced bookmarking
    Plugin 'MattesGroeger/vim-bookmarks'
    " :MundoShow - vim undo visualization
    Plugin 'simnalamburt/vim-mundo'

    " used for Ag, Commits, Rg command
    Plugin 'junegunn/fzf.vim'
    Plugin 'junegunn/fzf'

    Plugin 'henrik/vim-indexed-search'
    " Plugin 'scrooloose/nerdcommenter'

    " Plugin 'Alok/notational-fzf-vim'
    Plugin 'itchyny/vim-cursorword'
    Plugin 'tpope/vim-commentary'
    Plugin 'nathanaelkane/vim-indent-guides'
    Plugin 'haya14busa/incsearch.vim'
    Plugin 'junegunn/vim-easy-align'
" }}}

" {{{ Themes and colors
    Plugin 'itchyny/lightline.vim'
    Plugin 'caksoylar/vim-mysticaltutor'
    Plugin 'psliwka/vim-smoothie'
" }}}

" {{{ Writing
    Plugin 'preservim/vim-wordy'
    Plugin 'junegunn/goyo.vim'
    Plugin 'preservim/vim-pencil'
    Plugin 'dpelle/vim-LanguageTool'
    Plugin 'preservim/vim-markdown'
" }}}

" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin   indent on    " required

