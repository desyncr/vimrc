" {{{ Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --sort modified -g "!vendor" -g "!.git/*" -g "!*node_modules*" -g "!*scripts/pkg.pe*" -g "!*scripts/pkg.mx*" -g "!*.sql*" -g "!*test*" -g "!*buro_credito*" -g "!*afluenta_libs*" -g "!*fixtures*" -g "!*.js*" -g "!*.json" -g "!*.txt" -g "!*.csv" -g "!node_modules" -g "!map" -g "!wp" -g "!cookie_smf_explode.*" -g "!*old*" --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
nnoremap <silent> <Leader>b* :Rg <C-R><C-W><CR>
" }}}

" {{{ fzf commands
"command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '--word-regexp', <bang>0)
"command! -bang -nargs=* Rg call fzf#vim#grep("rg ".shellescape(<q-args>), 1, {'options': ''}, <bang>0)
" }}}


