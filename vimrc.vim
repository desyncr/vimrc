source ~/.vim/vundle.vim

syntax enable
set termguicolors
set background=dark
colorscheme mysticaltutor

" leader is comma
let mapleader=" "
let g:mapleader=" "

set nocompatible

" enable plugin support
filetype plugin on

" ex command tab complition mode
" zsh-like
set wildmenu wildmode=full

" bash-like
"set wildmode=longest,list

set shiftwidth=4 softtabstop=4 expandtab

set nowrap
" tab settings
set expandtab           " tabs are spaces

set number              " show line numbers
set numberwidth=5
"set relativenumber

"set showcmd            " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files

set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase
set scrolloff=5        " Minimum lines to keep above and below cursor

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Make it obvious where 80 characters is
"set textwidth=120
"set colorcolumn=+1

"set autochdir

set backspace=indent,eol,start

set splitright
set splitbelow
set hidden               " Allow buffer switching without saving

set backup               " backup files
set writebackup          " only in case you don't want a backup file while editing
set swapfile             " swap files

set undofile             " Persistent undo
set undolevels=10        " Maximum number of changes that can be undone
set undoreload=10        " Maximum number lines to save for undo on a buffer reload

" https://medium.com/@Aenon/vim-swap-backup-undo-git-2bf353caa02f
set backupdir=~/.vim/.backup
set directory=~/.vim/.swap
set undodir=~/.vim/.undo


" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"set omnifunc=syntaxcomplete#Complete

set switchbuf+=usetab

set lazyredraw " to avoid scrolling problems
set regexpengine=1 " way faster syntax redraw
set redrawtime=60
set synmaxcol=500
"set ttyfast
"set ttyscroll=5

set clipboard=unnamed
set nocursorline

"set mouse=a "or set mouse=a
"set noshowcmd
"" Set scroll to a third of the window instead of half
"augroup set_scroll
"      au BufEnter,WinEnter,WinNew,VimResized *,*.*
"        \ let &scroll=winheight(win_getid())/3
"augroup END

" To restore last line position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" for lightline 
set laststatus=2

source ~/.vim/init.vim
source ~/.vim/mappings.vim
source ~/.vim/commands.vim

set completeopt=longest,menuone
set foldlevel=3

" Fucking fuck
set noerrorbells visualbell t_vb=

set regexpengine=0
set spell spelllang=en_gb
let g:markdown_syntax_conceal = 1
