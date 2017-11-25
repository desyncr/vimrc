" n NERDTreeToggle
nmap n :NERDTreeToggle<CR>

" {s,S} create v/h split
nmap s :wincmd v<CR>
nmap S :wincmd s<CR>

" t create new tab
nmap t :tabnew<CR>
" q close window
nmap q :wincmd q<CR>

" <tab> next window
nmap <tab> :wincmd w<CR>

" nmap <tab> :tabnext<CR>
" . next tab
nmap . :tabnext<CR>

" `,` Switch between the splits
nnoremap <leader><leader>  <C-W><C-W>

" `+{h,j,k,l} move x split/window
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
