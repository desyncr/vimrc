source ~/.vim/vundle.vim

colorscheme desert
syntax enable

" leader is comma
let mapleader=";"
let g:mapleader=";"

set nocompatible

" enable plugin support
filetype plugin on

" highlight search matches
set hls

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

"set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files

set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set scrolloff=3         " Minumum lines to keep above and below cursor

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

"set autochdir

set backspace=indent,eol,start

set splitright
set splitbelow
set hidden               " Allow buffer switching without saving

set backup               " backup files
set writebackup          " only in case you don't want a backup file while editing
set swapfile             " swap files

set undofile             " Persistent undo
set undolevels=1000      " Maximum number of changes that can be undone
set undoreload=10000     " Maximum number lines to save for undo on a buffer reload

" https://medium.com/@Aenon/vim-swap-backup-undo-git-2bf353caa02f
set backupdir=~/.vim/.backup
set directory=~/.vim/.swap
set undodir=~/.vim/.undo

set redrawtime=1000000

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set omnifunc=syntaxcomplete#Complete

source ~/.vim/imported.vim
source ~/.vim/mappings.vim
source ~/.vim/commands.vim

set lazyredraw
set switchbuf+=usetab

set clipboard=unnamed
