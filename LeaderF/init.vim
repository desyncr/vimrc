" {{{ Leaderf
let g:Lf_ShortcutF = '<C-P>'
let g:Lf_ShortcutB = '<C-K>'
let g:Lf_WindowHeight = 0.1
"let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}
let g:Lf_WildIgnore = {
        \ 'dir': ['.git', '*/node_modules/*', 'vendor'],
        \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
        \}
let g:Lf_WorkingDirectoryMode='a'
let g:Lf_RootMarkers = ['.git']
" }}}


