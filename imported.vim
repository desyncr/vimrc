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
" Overwrite default cc red
hi ColorColumn ctermbg=8
" }}}
" WhichKey {{{
"nnoremap <silent> <leader> :WhichKey '`'<CR>
set timeoutlen=300

let g:which_key_map =  {}
" Shortcuts {{{
" }}}
" Configs:            <leader>+c+{r,e,c,m,v} {{{
let g:which_key_map['c'] = {
    \ 'name' : '+config',
    \ 'r': [':so ~/.vimrc'    , 'Reload .vimrc'],
    \ 'e': [':e ~/.vimrc'     , 'Edit .vimrc'],
    \ 'c': [':e ~/.vimrc'     , 'Edit .vimrc'],
    \ 'm': [':e mappings.vim' , 'Edit mappings.vim'],
    \ 'v': [':e vundle.vim'   , 'Edit vundle.vim'],
    \ }
" }}}
" Projects:           <leader>+p+{s,m,f,n,b} {{{
let g:which_key_map['p'] = {
    \ 'name' : '+projects' ,
    \ 's' : [':Ag'            , 'Search content'] ,
    \ 'm' : [':MRU'           , 'Recent files']   ,
    \ 'f' : [':CtrlP'         , 'Fuzzy find']     ,
    \ 'n' : [':NERDTreeToggle', 'NERDTree']       ,
    \ }
" }}}
" Splits:             <leader>+s+{n,nh,nv,c,h,j,k,l,=,_,|} {{{
let g:which_key_map['s'] = {
    \ 'name' : '+splits'      ,
    \ 'n'  : [':new'          , 'New split'],
    \ 'nh' : [':new'          , 'New split (hor)'],
    \ 'nv' : [':vnew'         , 'New split (ver)'],
    \ 'c'  : [':close'        , 'Close split'],
    \ 'h'  : ['<C-W>h'        , 'Focus split left'],
    \ 'j'  : ['<C-W>j'        , 'Focus split below'],
    \ 'k'  : ['<C-W>k'        , 'Focus split above'],
    \ 'l'  : ['<C-W>l'        , 'Focus split right'],
    \ '='  : ['<C-W>='        , 'Equal width / height'],
    \ '_'  : ['<C-W>_'        , 'Full width'],
    \ '|'  : ['<C-W>|'        , 'Full height']
    \ }
" }}}
" Tabs:               <leader>+t+{n,l,h,c} {{{
let g:which_key_map['t'] = {
    \ 'name' : '+tabs'        ,
    \ 'n'  : [':tabnew'       , 'New tab'],
    \ 'l'  : [':tabnext'      , 'Next tab'],
    \ 'h'  : [':tabprev'      , 'Previous tab'],
    \ 'c'  : [':tabclose'     , 'Close tab'],
    \ }
" }}}
" Buffers:            <leader>+b+{f,l,h,d} {{{
let g:which_key_map['b'] = {
    \ 'name' : '+buffer'      ,
    \ 'f': [':CtrlPBuffer'    , 'Find buffer'],
    \ 'l': [':bnext'          , 'Next buffer'],
    \ 'h': [':bprev'          , 'Previous buffer'],
    \ 'd': [':bdel'           , 'Delete buffer'],
    \ }
" }}}

call which_key#register('`', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '`'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '`'<CR>
" }}}
