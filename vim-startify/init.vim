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
            \ '      sSSs   .S_sSSs      sSSs    sSSs   .S_sSSs      sSSs  sdSS_SSSSSSbs  ',
            \ '     d%%SP  .SS~YS%%b    d%%SP   d%%SP  .SS~YS%%b    d%%SP  YSSS~S%SSSSSP  ',
            \ '    d%S     S%S    S%b  d%S     d%S     S%S    S%b  d%S          S%S  ',
            \ '    S%S     S%S    S%S  S%S     S%S     S%S    S%S  S%S          S%S  ',
            \ '    S&S     S%S    d*S  S&S     S&S     S%S    S&S  S&S          S&S  ',
            \ '    S&S_Ss  S&S   .S*S  S&S_Ss  S&S_Ss  S&S    S&S  S&S_Ss       S&S  ',
            \ '    S&S~SP  S&S_sdSSS   S&S~SP  S&S~SP  S&S    S&S  S&S~SP       S&S  ',
            \ '    S&S     S&S~YSY%b   S&S     S&S     S&S    S&S  S&S          S&S  ',
            \ '    S*b     S*S   `S%b  S*b     S*b     S*S    S*S  S*b          S*S  ',
            \ '    S*S     S*S    S%S  S*S.    S*S.    S*S    S*S  S*S.         S*S  ',
            \ '    S*S     S*S    S&S   SSSbs   SSSbs  S*S    S*S   SSSbs       S*S  ',
            \ '    S*S     S*S    SSS    YSSP    YSSP  S*S    SSS    YSSP       S*S  ',
            \ '    SP      SP                          SP                       SP  ',
            \ '    Y       Y                           Y                        Y  ',
            \ '    ']


let g:startify_change_to_vcs_root = 1
autocmd VimEnter * let t:startify_new_tab = 1
" }}}


