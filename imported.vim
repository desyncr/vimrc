" vim: foldmethod=marker

" Airline {{{
" Enable highlighting of the current line
set cursorline

"set t_Co=256
"set background=dark
"let base16colorspace=256  " Access colors present in 256 colorspace

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
let g:Lf_ShortcutF = '<C-P>'
let g:Lf_ShortcutB = '<C-K>'
let g:Lf_WindowHeight = 0.1
"let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}
let g:Lf_WildIgnore = {
        \ 'dir': ['.git', '*/node_modules/*', 'vendor'],
        \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
        \}
let g:Lf_WorkingDirectoryMode='a'
let g:Lf_RootMarkers = ['.git']

" }}}
" {{{ YCM
let g:ycm_key_detailed_diagnostics = '<C>byd'
let g:ycm_auto_trigger = 1
" }}}
" {{{ GitGutter
" Messes up with my mappings
let g:gitgutter_map_keys = 0
" }}}
" {{{ Startify
function! s:list_commits()
  let git = 'git -C ' . getcwd()
  let commits = systemlist(git .' log --oneline | head -n10')
  let git = 'G'. git[1:]
  return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "'. git .' show ". matchstr(v:val, "^\\x\\+") }')
endfunction

let g:startify_lists = [
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ { 'header': ['   Sessions'],       'type': 'sessions' },
      \ { 'header': ['   Commits'],        'type': function('s:list_commits') },
      \ ]
let g:startify_custom_header = [
            \ '         _/_/        _/_/  _/                                  _/               ',
            \ '      _/    _/    _/      _/  _/    _/    _/_/    _/_/_/    _/_/_/_/    _/_/_/  ',
            \ '     _/_/_/_/  _/_/_/_/  _/  _/    _/  _/_/_/_/  _/    _/    _/      _/    _/   ',
            \ '    _/    _/    _/      _/  _/    _/  _/        _/    _/    _/      _/    _/    ',
            \ '   _/    _/    _/      _/    _/_/_/    _/_/_/  _/    _/      _/_/    _/_/_/     ',
            \ '    ']

let g:startify_change_to_vcs_root = 1
autocmd VimEnter * let t:startify_new_tab = 1
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
  \   'rg --sort modified -g "!vendor" -g "!.git/*" -g "!*node_modules*" -g "!*scripts/pkg.pe*" -g "!*scripts/pkg.mx*" -g "!*.sql*" -g "!*test*" -g "!*buro_credito*" -g "!*afluenta_libs*" -g "!*fixtures*" -g "!*.js*" -g "!*.json" -g "!*.txt" -g "!*.csv" -g "!node_modules" -g "!map" -g "!wp" -g "!cookie_smf_explode.*" -g "!*old*" --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
nnoremap <silent> <Leader>b* :Rg <C-R><C-W><CR>
" }}}
" {{{ Tags
" ctags -R --fields=+aimlS --languages=php --exclude=vendor --exclude=node_modules --PHP-kinds=+cdfintav --exclude="\.git" --tag-relative=yes --exclude="*test.php"
au BufWritePost *.php silent! !eval '[ -f "ctags" ] && ctags' &
function! FollowTag()
  if !exists("w:tagbrowse")
    vsplit
    let w:tagbrowse=1
  endif
  execute "tag " . expand("<cword>")
endfunction

nmap <C-g> :call FollowTag()<CR>

set tags=/afluenta-platform/tags
" }}}
" {{{ ALE
let g:ale_set_signs = 0
"let g:ale_completion_enabled = 1
" }}}

" {{{ limelight
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1
" }}}
" {{{ vim hardmode
let g:hardtime_default_on = 1
" }}}
" {{{ vimfiler
let g:vimfiler_direction = 'rightbelow'
let g:vimfiler_ignore_pattern = [
      \ '^\.git$',
      \ '^\.DS_Store$',
      \ '^\.init\.vim-rplugin\~$',
      \ '^\.netrwhist$',
      \ '\.class$',
      \ '^\.'
      \]

augroup vfinit
  au!
  autocmd FileType vimfiler call s:vimfilerinit()
  autocmd BufEnter * nested if (!has('vim_starting') && winnr('$') == 1 && &filetype ==# 'vimfiler') |
        \ call s:close_last_vimfiler_windows() | endif
augroup END

function! s:vimfilerinit()
  setl nonumber
  setl norelativenumber
  nnoremap <silent><buffer> sg  :<C-u>call <SID>vimfiler_vsplit()<CR>
  nnoremap <silent><buffer> sv  :<C-u>call <SID>vimfiler_split()<CR>
endf


call vimfiler#custom#profile('default', 'context', {
      \ 'explorer' : 1,
      \ 'winwidth' : 45,
      \ 'winminwidth' : 45,
      \ 'toggle' : 1,
      \ 'auto_expand': 1,
      \ 'direction' : g:vimfiler_direction,
      \ 'parent': 0,
      \ 'status' : 1,
      \ 'safe' : 0,
      \ 'split' : 1,
      \ 'hidden': 1,
      \ 'no_quit' : 1,
      \ 'force_hide' : 0,
      \ })

" }}}

" {{{ Magit
let g:magit_default_fold_level = 0
let g:magit_show_magit_mapping = '<leader>vS'
" }}}
" {{{ vim-project
set rtp+=~/.vim/bundle/vim-project/
let g:project_enable_welcome = 0
let g:project_use_nerdtree = 0
call project#rc()
Project '~/Projects/afluenta-platform', 'Afluenta'
Project '~/Personal/vimrc', 'Vim'
" }}}
" {{{ php cs fixer
let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
let g:php_cs_fixer_cache = "/tmp/.php_cs.cache" " options: --cache-file
"let g:php_cs_fixer_config_file = '.php_cs' " options: --config

let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 0     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
" }}}
" {{{ PIV
let g:pdv_cfg_foldmarker = 0
let g:DisableAutoPHPFolding = 1
let g:php_folding = 1
" }}}
