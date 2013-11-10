let s:M1 = [ '#FFFFFF' , '#000000' , 0 , 0 ] " mode, info, statusline, all

let g:airline#themes#monotone#palette = {}

let g:airline#themes#monotone#palette.normal        = airline#themes#generate_color_map(s:M1, s:M1, s:M1, s:M1)
let g:airline#themes#monotone#palette.insert        = copy(g:airline#themes#monotone#palette.normal)
let g:airline#themes#monotone#palette.visual        = copy(g:airline#themes#monotone#palette.normal)
let g:airline#themes#monotone#palette.replace       = copy(g:airline#themes#monotone#palette.normal)
let g:airline#themes#monotone#palette.inactive      = copy(g:airline#themes#monotone#palette.normal)
let g:airline#themes#monotone#palette.insert_paste  = copy(g:airline#themes#monotone#palette.normal)

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#monotone#palette.ctrlp = copy(g:airline#themes#monotone#palette.normal)
