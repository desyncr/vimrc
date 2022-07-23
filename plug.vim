" vim: fdm=marker

call plug#begin()

" {{{ Essentials
    " startup screen with mru, projects etc
    Plug 'mhinz/vim-startify'
    " all around mru, files, buffers
    Plug 'Yggdroot/LeaderF'
    " spacemacs-like keybinding menu
    Plug 'liuchengxu/vim-which-key'
    " Per project dir settings
    "Plug 'amiorin/vim-project'
    " file browser
    Plug 'Shougo/vimfiler.vim'
    Plug 'Shougo/unite.vim'
    " griw
    "Plug 'vim-scripts/ReplaceWithRegister'
" }}}

" {{{ Git
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/gv.vim'
    " Plug 'jreybert/vimagit'
    Plug 'airblade/vim-gitgutter'
    "Plug 'idanarye/vim-merginal'
    " brew install tig
    Plug  'iberianpig/tig-explorer.vim'
" }}}

" {{{ Other
    " tags bar
    "Plug 'majutsushi/tagbar'
    "Plug 'ervandew/supertab'

    " Async linting
    "Plug 'w0rp/ale'
    " multiple line section ctrl+N, quit with esc
    Plug 'mg979/vim-visual-multi'
    "Plug 'regedarek/ZoomWin'

    Plug 'skywind3000/asyncrun.vim'

    " advanced bookmarking
    "Plug 'MattesGroeger/vim-bookmarks'
    " :MundoShow - vim undo visualization
    "Plug 'simnalamburt/vim-mundo'

    " used for Ag, Commits, Rg command
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf'

    "Plug 'henrik/vim-indexed-search'
    " Plug 'scrooloose/nerdcommenter'

    " Plug 'Alok/notational-fzf-vim'
    " underline words under cursor
    Plug 'itchyny/vim-cursorword'
    " gcc - comment out a line / uncomment
    Plug 'tpope/vim-commentary'
    "Plug 'nathanaelkane/vim-indent-guides'
    " Highlights search while typing
    Plug 'haya14busa/incsearch.vim'
    "Plug 'junegunn/vim-easy-align'
    " Interactive finder, :Clap
    Plug 'liuchengxu/vim-clap'
    Plug 'markwu/vim-mrufiles'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " <space><space>f - find char, <space><space-w - jump to word
    " <space><space>gE - jump anywhere
    Plug 'easymotion/vim-easymotion'
" }}}

" {{{ Themes and colors
    Plug 'itchyny/lightline.vim'
    Plug 'caksoylar/vim-mysticaltutor'
    " Smooth scrolling, C-D, C-U
    Plug 'psliwka/vim-smoothie'
" }}}

" {{{ Writing
    " :Goyo
    Plug 'junegunn/goyo.vim'
    " :Pencil
    Plug 'preservim/vim-pencil'
    Plug 'dpelle/vim-LanguageTool'
    Plug 'preservim/vim-wordy'
    "Plug 'preservim/vim-markdown'
" }}}

" All of your Plugs must be added before the following line
call plug#end()

