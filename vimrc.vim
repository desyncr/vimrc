colorscheme desert
syntax enable

" leader is comma
let mapleader="'"
let g:mapleader="'"
let mapleader='\'       
let g:mapleader='\'       
noremap ; :

" tab settings
set expandtab           " tabs are spaces

set number              " show line numbers
set numberwidth=4

set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files

set showmatch           " highlighit matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" remove highlighting for search
nnoremap <leader><space> :nohlsearch<CR>

" avoid paste errors
set paste

" ex command tab completion mode
set wildmenu wildmode=full

