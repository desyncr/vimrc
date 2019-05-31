"command! Q :qa!
"
function! ToggleColorColumn()
    if !exists("g:toggle_color_column_value")
        let g:toggle_color_column_value = 0
    endif

    if g:toggle_color_column_value == 1
        let g:toggle_color_column_value = 0
        set colorcolumn=+1
    else
        let g:toggle_color_column_value = 1
        set colorcolumn=0
    endif

endfunction
