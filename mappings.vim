" `+{h,j,k,l} move x split
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" {s,S} create v/h split
nmap s :wincmd v<CR>
nmap S :wincmd s<CR>

" t create new tab
nmap t :tabnew<CR>
"nmap q :tabclose<CR>
nmap <tab> :tabnext<CR>

" `+` Switch between the splits
nnoremap <leader><leader>  <C-W><C-W>

" n NERDTreeToggle
nmap n :NERDTreeToggle<CR>

