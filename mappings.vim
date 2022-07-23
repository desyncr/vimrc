" vim: foldmethod=marker

" Shortcuts {{{
    " <tab> Switch between the splits
    nnoremap <tab> <C-W><C-W>

    " {V,H} create v/h split
    nmap <leader>V :vnew<CR>
    nmap <leader>H :new<CR>

    " Remove highlight
    nnoremap qq :nohl<CR>
    nnoremap Q :nohl<CR>
    nnoremap <space>q :q<CR>

    " Remaps leader keys
    nnoremap ; :
    nnoremap <space><space> :

    " Fast write
    nnoremap W :w<CR>
    nnoremap <space>w :w<CR>


    " Files
    nnoremap <CR> :FzfMruFiles<CR>
    nnoremap f :FZF<CR>
    nnoremap ff :VimFilerBufferDir<CR>

    vnoremap < <gv
    vnoremap > >gv

    " Cheatsheet
    nnoremap ?? :Cheat40<CR>
    nnoremap ? :call cheat40#open(0, "$HOME/.vim/CHEATSHEET.md")<CR>

    " C+W + {H,J,K,L} - move split
    " C+W + [num] {<,>} resize split
    " C+w+{=,_,|} - Equal proporsions, maximise vertically, horizontally

    " vim-powered terminal in split window
    map <Leader>T :term ++close<cr>
    tmap <Leader>T <c-w>:term ++close<cr>

" }}}
