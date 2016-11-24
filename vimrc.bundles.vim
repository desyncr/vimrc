" vim: set foldmarker={,} foldlevel=0 foldmethod=marker nospell:
"Bundle 'msanders/snipmate.vim'
"Bundle 'tomtom/tcomment_vim'
Bundle 'yegappan/mru'
"Bundle 'vim-scripts/CRefVim'
"Bundle 'ervande/supertab'
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'majutsushi/tagbar'
"Bundle 'matze/vim-move'
"Bundle 'spolu/dwm.vim'
Bundle 'stephpy/vim-php-cs-fixer'
"Bundle 'esneider/YUNOcommit.vim'

" spf13 {{

    let g:spf13_leader='\'
    let g:spf13_keep_trailing_whitespace = 1

" }}

" Airline {{

    "let g:airline_powerline_fonts = 0
    "let g:airline#extensions#tabline#enabled = 0
    "set showtabline=0

" }}

" Neosnippets {{

    " Enable snipMate compatibility feature.
    "let g:neosnippet#enable_snipmate_compatibility = 1

" }}

" vim-move {{

    "let g:move_key_modifier = 'C'

" }}

" vim-multiple-cursors {{

    nnoremap <C-a> <C-d>
    let g:multi_cursor_next_key='<C-d>'

" }}

" ctrl-p {{

    let g:ctrlp_map = '<C-p>'

" }}

" php-cs-fixer {{

    nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

    let g:php_cs_fixer_path = "/usr/local/bin/php-cs-fixer" " define the path to the php-cs-fixer.phar
    let g:php_cs_fixer_level = "all"                  " which level ?
    let g:php_cs_fixer_config = "default"             " configuration
    let g:php_cs_fixer_php_path = "php"               " Path to PHP
    " let g:php_cs_fixer_fixers_list = ""               " List of fixers
    let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
    let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
    let g:php_cs_fixer_verbose = 1                    " Return the output of command if 1, else an inline information.
" }}

" YUNOcommit {{

    "let g:YUNOcommit_after = 1

" }}
