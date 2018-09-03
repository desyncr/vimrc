" vim: foldmethod=marker

" Main sections {{{{
" Configs:            <leader>+c+{r,e,c,m,v}
" Projects:           <leader>+p+{s,m,f,n,b}
" Splits:             <leader>+s+{n,nh,nv,c,h,j,k,l,=,_,|}
" Tabs:               <leader>+t+{n,l,h,c}
" Buffers:            <leader>+b+{l,h,c}
" Windows:            <leader>+w -- disabled
" }}}

" Shortcuts {{{{
" <tab> Switch between the splits
nnoremap <tab>  <C-W><C-W>

" {V,H} create v/h split
nmap <leader>V :vnew<CR>
nmap <leader>H :new<CR>

" remove highlight
nmap <esc><esc> :nohl<CR>

" C+w+{=,_,|} - Equal proporsions, maximise vertically, horizontally
" }}}}

" Configs {{{{
" reload vim config
nmap <leader>cr :so ~/.vimrc<CR>
nmap <leader>cc :e ~/.vimrc<CR>
nmap <leader>ce :e ~/.vimrc<CR>
nmap <leader>cm :e ~/.vim/mappings.vim<CR>
nmap <leader>cv :e ~/.vim/vundle.vim<CR>
" }}}}

" Projects {{{{
" Search with Ag
nmap <leader>ps :Ag<CR>
nmap <leader>pm :MRU<CR>
nmap <leader>pf :GitFiles<CR>
nmap <leader>pn :NERDTreeToggle<CR>
nmap <leader>pb :CtrlPBuffer<CR>
" }}}}

" Splits {{{{
" sn{v,h} create v/h splits
nmap <leader>sn :new<CR>
nmap <leader>snh :new<CR>
nmap <leader>snv :vnew<CR>
" sc close split
nmap <leader>sc :close<CR>

" s{h,j,k,l} move between splits
nnoremap <leader>sh <C-W>h
nnoremap <leader>sj <C-W>j
nnoremap <leader>sk <C-W>k
nnoremap <leader>sl <C-W>l

" manage splits dimensions
nnoremap <leader>s= <C-W>=
nnoremap <leader>s_ <C-W>_
nnoremap <leader>s\| <C-W>\|
" }}}}

" Windows {{{{
" w{h,j,k,l} move x split/window
"map <leader>wh :wincmd h<CR>
"map <leader>wj :wincmd j<CR>
"map <leader>wk :wincmd k<CR>
"map <leader>wl :wincmd l<CR>
" }}}}

" Buffers {{{{
" bl next buffer
nmap <leader>bl :bnext<CR>
" bh prev buffer
nmap <leader>bh :bprev<CR>
" b{q} close buffer
nmap <leader>bc :bdelete<CR>
" bf buffers find
nmap <leader>bf :CtrlPBuffer<CR>
" }}}}

" Tabs {{{{
" t{n} create new tab
nnoremap <leader>tn :tabnew<CR>
" t{l,h} next/prev tab
nnoremap <leader>tl :tabnext<CR>
nnoremap <leader>th :tabprev<CR>
" tc tab close
nnoremap <leader>tc :tabclose<CR>
" }}}}
