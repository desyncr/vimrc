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


