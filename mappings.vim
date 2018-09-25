" vim: foldmethod=marker

" Main sections {{{{
" Configs.....................................Vim configs, plugins
" Projects....................................File listing, search
" Splits...................................Split open, move, close
" Tabs.......................................Tab open, move, close
" Buffers.................................Buffer list, open, close
" Mode.............................................View mode, zoom
" VCS...........................................VCS status, commit
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
" Configs:            <leader>+c+{r,e,m,v,i,I,u} {{{
let g:which_key_map['c'] = {
    \ 'name' : '+config',
    \ 'r': [':so ~/.vimrc'    , 'Reload .vimrc'],
    \ 'e': [':e ~/.vimrc'     , 'Edit .vimrc'],
    \ 'm': [':e ~/.vim/mappings.vim' , 'Edit mappings (keybindings)'],
    \ 'v': [':e ~/.vim/vundle.vim'   , 'Edit plugins'],
    \ 'i': [':e ~/.vim/imported.vim' , 'Edit imported'],
    \ 'I': [':PluginInstall'  , 'Install plugins'],
    \ 'u': [':PluginUpdate'   , 'Update plugins']
    \ }
" }}}
" Projects:           <leader>+p+{s,w,m,f,n,N} {{{
let g:which_key_map['p'] = {
    \ 'name' : '+projects' ,
    \ 's' : [':Ag'            , 'Search content'] ,
    \ 'w' : [':Ag <C-R><C-W><CR>' , 'Search word'],
    \ 'm' : [':LeaderfMru'    , 'Recent files']   ,
    \ 'f' : [':LeaderfFile'   , 'Fuzzy find']     ,
    \ 'n' : [':NERDTreeFind'  , 'NERDTree']       ,
    \ 'N' : [':NERDTreeToggle', 'NERDTreeToggle'] ,
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
    \ 's'    : [':Startify' , 'Start up page'],
    \ 'n'    : [':set number!' , 'Toggle numbers']
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

