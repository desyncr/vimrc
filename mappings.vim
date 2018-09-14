" vim: foldmethod=marker

" Main sections {{{{
" Configs:            <leader>+c+{r,e,c,m,v}
" Projects:           <leader>+p+{s,m,f,n}
" Splits:             <leader>+s+{n,nh,nv,c,h,j,k,l,=,_,|}
" Tabs:               <leader>+t+{n,l,h,c}
" Buffers:            <leader>+b+{f,l,h,d}
" Windows:            <leader>+w -- disabled
" }}}

" Shortcuts {{{{
" <tab> Switch between the splits
nnoremap <tab>  <C-W><C-W>

" {V,H} create v/h split
"nmap <leader>V :vnew<CR>
"nmap <leader>H :new<CR>

" remove highlight
nmap // :nohl<CR>

nnoremap <CR> :LeaderfMru<CR>

" C+w+{=,_,|} - Equal proporsions, maximise vertically, horizontally
" }}}}
" WhichKey {{{
"nnoremap <silent> <leader> :WhichKey '`'<CR>
set timeoutlen=300

let g:which_key_map =  {}
" Configs:            <leader>+c+{r,e,m,v,i,u} {{{
let g:which_key_map['c'] = {
    \ 'name' : '+config',
    \ 'r': [':so ~/.vimrc'    , 'Reload .vimrc'],
    \ 'e': [':e ~/.vimrc'     , 'Edit .vimrc'],
    \ 'm': [':e ~/.vim/mappings.vim' , 'Edit mappings'],
    \ 'v': [':e ~/.vim/vundle.vim'   , 'Edit plugins'],
    \ 'k': [':e ~/.vim/imported.vim' , 'Edit imported (keybindings)'],
    \ 'i': [':PluginInstall'  , 'Install plugins'],
    \ 'u': [':PluginUpdate'   , 'Update plugins']
    \ }
" }}}
" Projects:           <leader>+p+{s,m,f,n,b} {{{
let g:which_key_map['p'] = {
    \ 'name' : '+projects' ,
    \ 's' : [':Ag'            , 'Search content'] ,
    \ 'w' : [':Ag <C-R><C-W><CR>' , 'Search word']    ,
    \ 'm' : [':LeaderfMru'    , 'Recent files']   ,
    \ 'f' : [':LeaderfFile'   , 'Fuzzy find']     ,
    \ 'n' : [':NERDTreeFind'  , 'NERDTree']       ,
    \ }
" }}}
" Splits:             <leader>+s+{n,v,c,h,j,k,l,=,_,|} {{{
let g:which_key_map['s'] = {
    \ 'name' : '+splits'      ,
    \ 'n'  : [':new'          , 'New split (hor)'],
    \ 'v'  : [':vnew'         , 'New split (ver)'],
    \ 'c'  : [':close'        , 'Close split'],
    \ 'h'  : ['<C-W>h'        , 'Focus split left'],
    \ 'j'  : ['<C-W>j'        , 'Focus split below'],
    \ 'k'  : ['<C-W>k'        , 'Focus split above'],
    \ 'l'  : ['<C-W>l'        , 'Focus split right'],
    \ '='  : ['<C-W>='        , 'Equal width / height'],
    \ '_'  : ['<C-W>_'        , 'Full width'],
    \ '|'  : ['<C-W>|'        , 'Full height'],
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
" Buffers:            <leader>+b+{s,l,h,d,t,f,T} {{{
let g:which_key_map['b'] = {
    \ 'name' : '+buffer'      ,
    \ 's': [':LeaderfBuffer'  , 'Find buffer'],
    \ 'l': [':bnext'          , 'Next buffer'],
    \ 'h': [':bprev'          , 'Previous buffer'],
    \ 'd': [':bdel'           , 'Delete buffer'],
    \ 't': [':LeaderfBufTag'  , 'Search tags'],
    \ 'f': [':LeaderfFunction', 'Search functions'],
    \ 'T' : [':Tagbar'        , 'Tagbar']         ,
    \ }
" }}}
" Mode:                 <leader>+m+{w,z,g,s} {{{
let g:which_key_map['m'] = {
    \ 'name' : '+mode'      ,
    \ 'w'    : [':Goyo'     , 'Write mode (toggle)'],
    \ 'z'    : [':ZoomWin'  , 'Zoom window (toggle)'],
    \ 'g'    : [':GitGutterToggle', 'Toggle gutter'],
    \ 's'    : [':Startify' , 'Start up page']
    \ }
" }}}
" VCS: <leader>+v+{a,P,f,p,s,c,b,l,d} {{{
let g:which_key_map['v'] = {
    \ 'name' : '+vcs'       ,
    \ 'a'    : [':Gwrite'   , 'Add'],
    \ 'P'    : [':Gpush'    , 'Push'],
    \ 'f'    : [':Gfetch'   , 'Fetch'],
    \ 'p'    : [':Gpull'    , 'Pull'],
    \ 's'    : [':Gstatus'  , 'Status'],
    \ 'c'    : [':Gcommit'  , 'Commit'],
    \ 'b'    : [':Gblame'   , 'Blame'],
    \ 'l'    : [':GV', 'Log'],
    \ 'd'    : [':Gdiff'    , 'Diff']
    \ }
" }}}

call which_key#register(";", "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey ";"<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual ";"<CR>
nnoremap <silent> <leader>pw :Ag <C-R><C-W><CR>
" }}}

