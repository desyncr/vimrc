source ~/.vim/vundle.vim

colorscheme desert
syntax enable

" leader is comma
let mapleader="`"
let g:mapleader="`"
" noremap ; :

" tab settings
set expandtab           " tabs are spaces

set number              " show line numbers
set numberwidth=5

set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files

set showmatch           " highlighit matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set nobackup            " no backup files
set nowritebackup       " only in case you don't want a backup file while editing
set noswapfile          " no swap files

" remove highlighting for search
nnoremap <leader><space> :nohlsearch<CR>
"nnoremap <esc> :nohlsearch<CR>

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" avoid paste errors
set paste

" ex command tab completion mode
set wildmenu wildmode=full

source ~/.vim/mappings.vim
