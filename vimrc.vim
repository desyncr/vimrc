" 
" https://github.com/amix/vimrc
" http://www.youtube.com/watch?v=xZuy4gBghho
"
set background=dark
colorscheme desert 
set nowrap
"let g:Powerline_symbols = 'fancy' -- ain't working

" Use , to move to next tab (cycling)
map <leader><cr> :tabnext<cr>

" Folds - manually - source: http://vim.wikia.com/wiki/Folding
augroup vimrc
      au BufReadPre * setlocal foldmethod=indent
      au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END
set foldmethod=manual

inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Shortcuts
"
" o -> buffer explorer
" f -> MRU
" nn -> NERDTree togle
" r -> (with vselection -> search and replace)
"
" ctrl+(hjkl) move between windows
"
" # & * do visual search and selection
"
" :nohl -> remove hl
"
" zc -> close fold
" zo -> open fold
"
"
