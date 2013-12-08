colorscheme ir_black
let g:airline_theme = 'monotone'

let mapleader = '\'
let g:mapleader = '\'

" Set autowrite and autoread
set autowrite autoread

" Fix bad autoindent of pasted text
" source: https://github.com/mcandre/dotfiles/.vimrc
"set paste

" source: https://github.com/nviennot/vim-config/blob/master/vimrc"
set wildmenu
set wildmode=list:longest,full
set shortmess+=A                " Always edit file, even when swap file is found

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

" No spellcheck please
set nospell

" No wrap please
set nowrap

" Fast saving
nmap <leader>w :w!<cr>

" :WW sudo saves the file
" (useful for handling the permission-denied error)
command! WW w !sudo tee % > /dev/null

" Map <space> to / (search) and Ctrl-<space> to ? (backward search)
map <space> /

" F2-F3 to move back and forward the searchs
" Use <space>keyground<cr><F3>
" USe <ESC> to de highlight the searchs
map <F3> /<cr>
map <F2> ?<cr>

" Line numbers toggle
nmap <silent> <C-_> :NumbersToggle<cr>

" Disable hl when <leader><cr> is pressed
nmap <silent> <leader><cr> :noh<cr>
" Disable hl when <esc> is pressed
nmap <silent> <ESC> :noh<cr>

" Mappings to move between tabs
nmap <silent> <C-t> :tabnew<cr>
nmap <silent> <C-q> :tabclose<cr>
nmap <silent> <Tab> :tabnext<cr>
nmap <silent> <S-Tab> :tabprev<cr>

" Undo/redo common sense
" u also works for :undo
nmap <silent> <C-S-z> :undo<cr>
nmap <silent> <C-r> :redo<cr>

map <leader><Tab> :NERDTreeFind<cr>

" Folds - manually - source: http://vim.wikia.com/wiki/Folding
" augroup vimrc
"     au BufReadPre * setlocal foldmethod=indent
"     au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
" augroup END
" set foldmethod=indent

nmap <C-f> :foldclose<cr>
nmap <C-S-f> :foldopen<cr>

" Automatically leave insert mode after 'updatetime' (4s by default).
au CursorHoldI * stopinsert

" No help
map <F1> <nop>
imap <F1> <nop>
vmap <F1> <nop>

" C-w close
map <C-w> :q<cr>
map <C-h> <noop>
map <C-j> <noop>
map <C-k> <noop>
map <C-l> <noop>

" C-S-o open file (doesn't work)
map <C-S-o> :e <tab>

" MRU
nmap <C-o> :MRU<cr>

" C-p
" Ctrl-P plugin

" Multiline comment (already exists with tcomment plugin)
vmap <C-/> :TComment<cr>
vmap <C-S-/> :TComment<cr>

" Use ctrl + n to selent multiple lines and edit

