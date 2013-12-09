colorscheme ir_black
let g:airline_theme = 'monotone'
let g:indent_guides_enable_on_vim_startup = 0
let g:ctrlp_map = '<c-l>'
let mapleader = '\'
let g:mapleader = '\'

" Set autowrite and autoread
set autowrite autoread

" Fix bad autoindent of pasted text
" source: https://github.com/mcandre/dotfiles/.vimrc
"set paste
":set nopaste

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

" search ignore case
set ignorecase
set smartcase

" indent
set ai
set smartindent

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
" Use <ESC> to de highlight the searchs
" map <F3> /<cr>
map <cr> /<cr>
nmap <F3> *
nmap <F2> #

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
nmap <silent> <C-b> :bnext<cr>

" Undo/redo common sense
" u also works for :undo
"nmap <silent> <C-S-z> :undo<cr>
nmap <silent> <C-r> :redo<cr>

map <leader><Tab> :NERDTreeFind<cr>

" Automatically leave insert mode after 'updatetime' (4s by default).
au CursorHoldI * stopinsert

" No help
map <F1> <nop>
imap <F1> <nop>
vmap <F1> <nop>

" Fuck off
map q: :q
imap q: :q
vmap q: :q

" Splits
" open new split w/ mru
map <S-s> :sp<cr>:CtrlPMRUFiles<cr>

" shift+{h,j,k,l} move between splits
map <silent> <S-h> :winc h<cr>
map <silent> <S-j> :winc j<cr>
map <silent> <S-k> :winc k<cr>
map <silent> <S-l> :winc l<cr>

" C-w close
map <C-w> :q<cr>

map <C-h> <nop>
map <C-l> <nop>

" page up / page down
map <C-j> <C-d>
map <C-k> <C-u>

" New tab w/ MRU
" map <C-S-o> :e <tab>
map <C-o> :tabnew +CtrlPMRUFiles<cr>
map <C-p> :tabnew +CtrlP<cr>

" MRU
" nmap <C-o> :CtrlPMRUFiles<cr>
" nmap <C-p> :CtrlPMRUFiles<cr>

" Multiline comment (already exists with tcomment plugin)
map <C-c> :TComment<cr>

nmap <leader>u vEU
nmap <leader>l vEu
nmap <leader>s ^v$

" use ctrl + n to selent multiple lines and edit
" v% > select to next )
" vib select next ) (inner)
" v{ select next block {}
" vjj> tab indent 3 lines
" C+c comment block of lines
" C+/ to display number lines
"
" http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim

