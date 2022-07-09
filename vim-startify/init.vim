" {{{ Startify
function! s:list_commits()
  let git = 'git -C ' . getcwd()
  let commits = systemlist(git .' log --oneline | head -n10')
  let git = 'G'. git[1:]
  return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "'. git .' show ". matchstr(v:val, "^\\x\\+") }')
endfunction

let g:startify_lists = [
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ { 'header': ['   Sessions'],       'type': 'sessions' },
      \ { 'header': ['   Commits'],        'type': function('s:list_commits') },
      \ ]
let g:startify_custom_header = [
            \ '________  ___________ ______________.___._______  ___________________  ',
            \ '\______ \ \_   _____//   _____/\__  |   |\      \ \_   ___ \______   \ ',
            \ ' |    |  \ |    __)_ \_____  \  /   |   |/   |   \/    \  \/|       _/ ',
            \ ' |    `   \|        \/        \ \____   /    |    \     \___|    |   \ ',
            \ '/_______  /_______  /_______  / / ______\____|__  /\______  /____|_  / ',
            \ '        \/        \/        \/  \/              \/        \/       \/  ',
            \ ' ']

let g:startify_change_to_vcs_root = 1
autocmd VimEnter * let t:startify_new_tab = 1
" }}}


