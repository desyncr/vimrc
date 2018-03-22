" n NERDTreeToggle
nmap n :NERDTreeToggle<CR>

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

" {s,S} create v/h split
nmap s :vnew<CR>
nmap S :new hor<CR>

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

" remove highlight
nmap <esc> :nohl<CR>

" reload vim config
nmap R :so ~/.vimrc<CR>

" W backward word
nmap W b

" `+{h,j,k,l} move x split/window
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" {b,B} forward/backward buffer
nmap b :bnext<CR>
nmap B :bprev<CR>

