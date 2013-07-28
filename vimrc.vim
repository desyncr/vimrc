colorscheme ir_black

" Set autowrite and autoread
set autowrite autoread

let mapleader = '\'
let g:mapleader = '\'

" Fast saving
nmap <leader>w :w!<cr>

" Use , to move to next tab (cycling)
map <leader><cr> :tabnext<cr>

" number lines
set nu
set numberwidth=4

" tabs settings
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" indent
set ai
set si

" Map <space> to / (search) and Ctrl-<space> to ? (backward search)
map <space> /
map <c-space> ?

" Disable hl when <leader><cr> is pressed
nmap <silent> <leader><cr> :noh<cr>

" Mappings to move between tabs
nmap <silent> <leader>t :tabnew<cr>
nmap <silent> <leader>q :tabclose<cr>
nmap <silent> <leader><Tab> :tabnext<cr>

" Move a line of text using ALT+[jk]
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

map <leader>n :NERDTreeFind<cr>
let g:indent_guides_enable_on_vim_startup = 0

" Folds - manually - source: http://vim.wikia.com/wiki/Folding
augroup vimrc
    au BufReadPre * setlocal foldmethod=indent
    au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END
set foldmethod=indent

nmap <C-f> :foldclose<cr>
nmap <C-o> :foldopen<cr>
