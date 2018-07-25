" n NERDTreeToggle
nmap <leader>n :NERDTreeToggle<CR>

" {s,h} create v/h split
nmap <leader>V :vnew<CR>
nmap <leader>H :new<CR>

" <tab> Switch between the splits
nnoremap <tab>  <C-W><C-W>

" `+{h,j,k,l} move x split/window
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" q close window
nmap <leader>q :bdelete<CR>
nmap <leader>Q :quit<CR>

" t create new tab
nmap <leader>t :tabnew<CR>
" T next tab
nnoremap <leader>T :tabnext<CR>

" . next buffer
nmap <leader>> :bnext<CR>
" > prev buffer
nmap <leader>< :bprev<CR>

" remove highlight
nmap <esc> :nohl<CR>

" reload vim config
nmap <leader>R :so ~/.vimrc<CR>

" open buffergator
nnoremap <leader>t :BuffergatorToggle<CR>

" W write file
nnoremap <leader>W :write<CR>

" shortcuts
nnoremap <c-p> :GitFiles<CR>
nnoremap <Leader>o :Files<CR>
nnoremap <Leader>O :CtrlP<CR>

" disable arrow movement, resize splits instead.
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
