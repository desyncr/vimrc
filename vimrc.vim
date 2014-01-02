" vim: set foldmarker={,} foldlevel=0 foldmethod=marker nospell:

" Colors: {{

    colorscheme ir_black
    let g:airline_theme = 'monotone'

    let g:indent_guides_enable_on_vim_startup = 0

    highlight VertSplit cterm=none ctermbg=none ctermfg=black

    " Signify {{

        highlight DiffAdd cterm=none ctermbg=none ctermfg=119
        highlight DiffDelete cterm=none ctermbg=none ctermfg=167
        highlight DiffChange cterm=none ctermbg=none ctermfg=167
        highlight SignColumn cterm=none ctermbg=none

    " }}

" }}

" Basic: {{

    let mapleader = '\'
    let g:mapleader = '\'

    " Set autowrite and autoread
    set autowrite autoread

    " Fix bad autoindent of pasted text
    " source: https://github.com/mcandre/dotfiles/.vimrc
    "set paste
    set nopaste

    " source: https://github.com/nviennot/vim-config/blob/master/vimrc
    set wildmenu
    set wildmode=list:longest,full

    " Always edit file, even when swap file is found
    set shortmess+=A

    " number lines
    set nu
    set numberwidth=4
    " :NumbersEnable

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

    " Automatically leave insert mode after 'updatetime' (4s by default).
    "au CursorHoldI * stopinsert

" }}

" Keybindings: {{

    " Shortcuts: {{

        " Fast saving
        nmap <silent> <leader>w :w!<cr>
        nmap <silent> <leader>e :e<cr>
        nmap <silent> <leader>r :e<cr>

        " No help
        map <F1> <nop>
        imap <F1> <nop>
        vmap <F1> <nop>

        " Fuck off
        map q: :q<cr>
        imap q: :q<cr>
        vmap q: :q<cr>

        " useful with git difftool
        map <S-q> <nop>
        command! QQ quitall

        " :WW sudo saves the file
        command! WW w !sudo tee % > /dev/null

        " \+! Quickly edit/reload the vimrc file
        nmap <silent> <leader>! :so ~/.vimrc.local<cr>

        nmap <C-f> :foldclose<cr>

    " }}

    " Search: {{

        " Map <space> to / (search) and Ctrl-<space> to ? (backward search)
        map <space> /

        " F2-F3 to move back and forward the searchs
        " Use <space>keyground<cr><F3>
        " Use <ESC> to de highlight the searchs
        " map <F3> /<cr>
        map <cr> /<cr>
        nmap <F3> *
        nmap <F2> #

        " Disable hl when <leader><cr> is pressed
        nmap <silent> <leader><cr> :noh<cr>

        " Disable hl when <esc> is pressed
        nmap <silent> <ESC> :noh<cr>

    " }}

    " Tabs and Splits: {{

        " Mappings to move between tabs
        nmap <silent> <C-t> <C-n><cr>
        nmap <silent> <Tab> <C-j><cr>
        nmap <silent> <S-Tab> <C-k><cr>

        nmap <silent> <C-b> :bnext<cr>
        nmap <C-l> <nop>

        " Splits
        " open new split w/ mru
        map <S-s> :sp<cr>:CtrlP<cr>

        " shift+{up,down,left,right} move between splits
        map <silent> <S-UP> :winc k<cr>
        map <silent> <S-DOWN> :winc j<cr>
        map <silent> <S-RIGHT> :winc l<cr>
        map <silent> <S-LEFT> :winc h<cr>

        " C-w close
        map <C-w> :bw<cr>

    " }}

    " Moving around: {{

        " page up / page down
        nmap <S-j> <C-a>
        nmap <S-k> <C-u>

        " Move between lines faster
        nnoremap <S-l> <S-w>
        nnoremap <S-h> <S-B>
        nnoremap <S-w> b

    " }}

    " Plugins: {{

        " Line numbers toggle;
        map <silent> <C-_> :NumbersToggle<cr>

        " use <C-e> instead
        map <S-e> :Tagbar<cr>
        map <C-e> :NERDTreeToggle<cr>

        " New tab w/ MRU
        map <C-o> :tabnew +CtrlP<cr>

        " Multiline comment (already exists with tcomment plugin)
        map <C-c> :TComment<cr>

    " }}

    " Text: {{

        " Undo/redo common sense
        " u also works for :undo
        "nmap <silent> <C-S-z> :undo<cr>
        nmap <silent> <C-r> :redo<cr>

        nmap <leader>u vEU
        nmap <leader>l vEu
        nmap <leader>s ^v$
        nmap <leader>t $dh

        " Duplicate line
        nmap <S-d> :t.<cr>

        " Duplicate visual selection
        vmap dd :t'><cr>

        " use ctrl + n to selent multiple lines and edit
        " v% > select to next )
        " vib select next ) (inner)
        " v{ select next block {}
        " vjj> tab indent 3 lines
        " C+c comment block of lines
        " C+// comment line
        " C+/ to display number lines

        " http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim
    " }}

" }}

