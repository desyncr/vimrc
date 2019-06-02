" {{{ vim-bookmarks
let g:bookmark_no_default_key_mappings = 1
nmap m :BookmarkToggle<CR>
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1

call unite#custom#profile('source/vim_bookmarks', 'context', {
    \   'winheight': 40,
    \   'direction': 'botright',
    \   'start_insert': 0,
    \   'keep_focus': 1,
    \   'no_quit': 1,
    \ })
" }}}


