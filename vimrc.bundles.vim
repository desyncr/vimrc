" vim: set foldmarker={,} foldlevel=0 foldmethod=marker nospell:
"Bundle 'msanders/snipmate.vim'
Bundle 'tomtom/tcomment_vim'
" Bundle 'yegappan/mru'
Bundle 'vim-scripts/CRefVim'
Bundle 'ervande/supertab'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'majutsushi/tagbar'
Bundle 'matze/vim-move'
Bundle 'spolu/dwm.vim'

" spf13 {{

    let g:spf13_leader='\'
    let g:spf13_keep_trailing_whitespace = 1

" }}

" Airline {{

    let g:airline_powerline_fonts = 0
    let g:airline#extensions#tabline#enabled = 0
    set showtabline=0

" }}

" Neosnippets {{

    " Enable snipMate compatibility feature.
    let g:neosnippet#enable_snipmate_compatibility = 1

" }}

" vim-move {{

    let g:move_key_modifier = 'C'

" }}

" vim-multiple-cursors {{

    nnoremap <C-a> <C-d>
    let g:multi_cursor_next_key='<C-d>'

" }}

" ctrl-p {{

    let g:ctrlp_map = '<C-p>'

" }}
