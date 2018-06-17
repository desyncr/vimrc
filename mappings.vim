" n NERDTreeToggle
nmap n :NERDTreeToggle<CR>

" q close current split
"nmap q :wincmd c<CR>

" {s,V,S} create h,v,v split
"nmap s :wincmd s<CR>
"nmap V :wincmd v<CR>
"nmap S :wincmd v<CR>

" {s,h} create v/h split
nmap s :vnew<CR>
nmap H :new<CR>

" <tab> Switch between the splits
nnoremap <tab>  <C-W><C-W>

" remove highlight
nmap <esc> :nohl<CR>

" W backward word
"nmap W b

" `+{h,j,k,l} move x split/window
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" q close window
nmap q :bdelete<CR>

" t create new tab
nmap t :tabnew<CR>
" T next tab
nnoremap T :tabnext<CR>

" . next buffer
nmap . :bnext<CR>
" > prev buffer
nmap > :bprev<CR>

" <leader>r reload vim config
nmap <leader>r :so %<CR>

" reload vim config
nmap R :so ~/.vimrc<CR>

" open buffergator
nnoremap <leader>t :BuffergatorToggle<CR>

" W write file
nnoremap W :write<CR>

" shortcuts
nnoremap <c-p> :GitFiles<CR>
nnoremap <Leader>o :Files<CR>
nnoremap <Leader>O :CtrlP<CR>
