" n NERDTreeToggle
nmap n :NERDTreeToggle<CR>

" {s,h} create v/h split
nmap s :vnew<CR>
nmap H :new<CR>

" <tab> Switch between the splits
nnoremap <tab>  <C-W><C-W>

" `+{h,j,k,l} move x split/window
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" q close window
nmap q :bdelete<CR>
nmap Q :quit<CR>

" t create new tab
nmap t :tabnew<CR>
" T next tab
nnoremap T :tabnext<CR>

" . next buffer
nmap . :bnext<CR>
" > prev buffer
nmap > :bprev<CR>

" remove highlight
nmap <esc> :nohl<CR>

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

" disable arrow movement, resize splits instead.
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
