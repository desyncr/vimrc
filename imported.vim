" vim: foldmethod=marker

" Airline {{{
" Enable highlighting of the current line
set cursorline

set t_Co=256
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace

let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='minimalist'
let g:airline_solarized_bg='dark'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 0

let g:fzf_layout = { 'down': '~20%' }
hi ColorColumn ctermbg=8 |
hi Search         term=none ctermfg=black ctermbg=12 guifg=wheat guibg=peru |
hi Visual         term=none cterm=none ctermbg=grey ctermfg=black guifg=khaki guibg=olivedrab |

" }}}
" {{{ Leaderf
let g:Lf_ShortcutF = '<leader>BF'
let g:Lf_ShortcutB = '<leader>BB'
let g:Lf_WindowHeight = 0.1
"let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}
let g:Lf_WildIgnore = {
        \ 'dir': ['.git', 'node_modules', 'vendor'],
        \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
        \}
let g:Lf_WorkingDirectoryMode='a'
let g:Lf_RootMarkers = ['.git']

" }}}
" {{{ YCM
let g:ycm_key_detailed_diagnostics = '<C>byd'
" }}}
" {{{ GitGutter
" Messes up with my mappings
let g:gitgutter_map_keys = 0
" }}}
" {{{ Startify
function! s:list_commits()
  let git = 'git -C /afluenta-platform'
  let commits = systemlist(git .' log --oneline | head -n10')
  let git = 'G'. git[1:]
  return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "'. git .' show ". matchstr(v:val, "^\\x\\+") }')
endfunction

let g:startify_lists = [
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ { 'header': ['   Sessions'],       'type': 'sessions' },
      \ { 'header': ['   Commits'],        'type': function('s:list_commits') },
      \ ]
"let g:startify_custom_header = ["Hello"]

autocmd VimEnter * let t:startify_new_tab = 1
"autocmd VimEnter *
"       \ if !exists('t:goyo_master') |
"       \   Goyo |
"       \   Startify |
"       \ endif
"autocmd BufLeave *
"       \ if exists('t:goyo_master') |
"       \   Goyo! |
"       \ endif
" }}}
" {{{ Vim fugitive
let g:fugitive_git_executable = 'git --no-pager '
" }}}
" {{{ vmath
vmap <expr>  ++  VMATH_YankAndAnalyse()
nmap         ++  vip++
" }}}
" {{{ php fixer
let g:php_cs_fixer_enable_default_mapping = 0
" }}}
" {{{ fzf commands
"command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '--word-regexp', <bang>0)
"command! -bang -nargs=* Rg call fzf#vim#grep("rg ".shellescape(<q-args>), 1, {'options': ''}, <bang>0)
" }}}
" {{{ vim-smooth-scroll
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
" }}}
" {{{ Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg -g "!vendor" -g "!*scripts/pkg.pe*" -g "!*scripts/pkg.mx*" -g "!*.sql*" -g "!*test*" -g "!*buro_credito*" -g "!*afluenta_libs*" -g "!*fixtures*" -g "!*.js*" -g "!*.json" -g "!*.txt" -g "!*.csv" -g "!node_modules" -g "!map" -g "!wp" -g "!cookie_smf_explode.*" -g "!*old*" --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
" }}}
" {{{ Tags
" ctags -R --fields=+aimlS --languages=php --exclude=vendor --exclude=node_modules --exclude=afluenta_libs --PHP-kinds=+cdfint-av --exclude="\.git" --tag-relative=yes --exclude="*test.php"
au BufWritePost *.php silent! !eval '[ -f "ctags" ] && ctags' &
map <C-]> :sp split<CR>:exec("tag ".expand("<cword>"))<CR>
set tags=/afluenta-platform/tags
" }}}
" {{{ ALE
let g:ale_set_signs = 0
" }}}
" {{{ vim-project
 let g:project_enable_welcome = 0
" if you want the NERDTree integration.
let g:project_use_nerdtree = 1

call project#rc("/")
Project "/afluenta-platform"
" }}}
