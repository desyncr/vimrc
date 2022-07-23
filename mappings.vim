" vim: foldmethod=marker

" Shortcuts {{{
" <tab> Switch between the splits
nnoremap <tab> <C-W><C-W>

" {V,H} create v/h split
nmap <leader>V :vnew<CR>
nmap <leader>H :new<CR>

" Remove highlight
nnoremap qq :nohl<CR>
nnoremap Q :nohl<CR>
nnoremap <space>q :q<CR>

" Remaps leader keys
nnoremap ; :
nnoremap <space><space> :

" Fast write
nnoremap W :w<CR>
nnoremap <space>w :w<CR>

" Show MRU
"nnoremap <CR> :LeaderfMruCwd<CR>
"nnoremap <CR> :LeaderfMruCwd<CR>
"
"nnoremap <CR> :Clap mrufiles<CR>
"nnoremap <CR><CR> :Clap files<CR>
"
"
nnoremap <CR> :FzfMruFiles<CR>

nnoremap f :FZF<CR>
nnoremap ff :VimFilerBufferDir<CR>

vnoremap < <gv
vnoremap > >gv

" C+W + {H,J,K,L} - move split
" C+W + [num] {<,>} resize split
" C+w+{=,_,|} - Equal proporsions, maximise vertically, horizontally
" }}}
