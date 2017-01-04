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

" `+{h,j,k,l} move x split
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" `+{n,N} create v/h split
map <leader>n :wincmd v<CR>
map <leader>N :wincmd s<CR>

" Switch between the splits
nnoremap <leader><leader>  <C-W><C-W>


