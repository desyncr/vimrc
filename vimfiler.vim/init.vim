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


