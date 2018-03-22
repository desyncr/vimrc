" `+{h,j,k,l} move x split
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" q close current split
nmap q :wincmd c<CR>

" {s,V,S} create h,v,v split
nmap s :wincmd s<CR>
nmap V :wincmd v<CR>
nmap S :wincmd v<CR>

" t create new tab
nmap t :tabnew<CR>

" Q close current tab
nmap Q :tabclose<CR>

" `+` tabnext
nmap <leader><leader> :tabnext<CR>

" <tab> Switch between the splits
nmap <tab> <C-W><C-W>

" n NERDTreeToggle
nmap n :NERDTreeToggle<CR>

" remove highlight
nmap <esc> :nohl<CR>

" reload vim config
nmap R :so ~/.vimrc<CR>

nmap W b

nmap b :bnext<CR>
nmap B :bprev<CR>
