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


function! Runner(runner)
    exec ":AsyncRun " . eval("g:runner_command_" . a:runner)
endfunction

let g:runner_command_test   = "make test"
let g:runner_command_run    = "make run"
let g:runner_command_build  = "make build"

command! RunnerTest     :call Runner("test")
command! RunnerRun      :call Runner("run")
command! RunnerBuild    :call Runner("build")
