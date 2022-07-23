" vim: fdm=marker
" WhichKey {{{
"nnoremap <silent> <leader> :WhichKey '`'<CR>
set timeoutlen=300

let g:which_key_map =  {}
" Configs:            <leader>+c+{r,e,m,v,i,I,u,M} {{{
let g:which_key_map['c'] = {
    \ 'name' : '+config',
    \ 'r'    : [':so ~/.vimrc'    , 'Reload configuration'  ],
    \ 'e'    : [':e ~/.vimrc'     , 'Edit configuration'    ],
    \ 'm'    : [':e ~/.vim/mappings.vim' , 'Edit mappings'  ],
    \ 'v'    : [':e ~/.vim/vundle.vim'   , 'Edit vundles'   ],
    \ 'I'    : [':PluginInstall'  , 'Install plugins'       ],
    \ 'U'    : [':PluginUpdate'   , 'Update plugins'        ],
    \ 'M'    : [':Maps'           , 'Show mappings'         ],
    \ }
" }}}
" Projects:           <leader>+p+{s,w,m,f,n,N} {{{
let g:which_key_map['p'] = {
    \ 'name' : '+projects'              ,
    \ 's'    : [':Rg '                  , 'Search content'  ],
    \ 'w'    : [':Rg <C-R><C-W><CR>'    , 'Search word'     ],
    \ 't'    : [':LeaderfTagCword'      , 'Search tags'     ],
    \ 'm'    : [':LeaderfMruCwd'        , 'Recent files'    ],
    \ 'f'    : [':LeaderfFile'          , 'Search files'    ],
    \ 'F'    : [':Clap mrufiles'        , 'Clap MRU files'  ],
    \ 'n'    : [':Clap filer'           , 'Clap MRU filer'  ],
    \ 'S'    : [':Startify'             , 'Startify'        ]
    \ }
" }}}
" Splits:             <leader>+s+{n,v,c,h,j,k,l,=,_,|} {{{
let g:which_key_map['s'] = {
    \ 'name' : '+splits'      ,
    \ 'n'    : [':new'        , 'New split (hor)'           ],
    \ 'v'    : [':vnew'       , 'New split (ver)'           ],
    \ 'c'    : [':close'      , 'Close split'               ],
    \ 'h'    : ['<C-W>h'      , 'Focus split left'          ],
    \ 'j'    : ['<C-W>j'      , 'Focus split below'         ],
    \ 'k'    : ['<C-W>k'      , 'Focus split above'         ],
    \ 'l'    : ['<C-W>l'      , 'Focus split right'         ],
    \ '='    : ['<C-W>='      , 'Equal width / height'      ],
    \ '_'    : ['<C-W>_'      , 'Full width'                ],
    \ '|'    : ['<C-W>|'      , 'Full height'               ],
    \ }
" }}}
" Tabs:               <leader>+t+{n,l,h,c} {{{
let g:which_key_map['t'] = {
    \ 'name' : '+tabs'        ,
    \ 'n'    : [':tabnew'     , 'New tab'                   ],
    \ 'l'    : [':tabnext'    , 'Next tab'                  ],
    \ 'h'    : [':tabprev'    , 'Previous tab'              ],
    \ 'c'    : [':tabclose'   , 'Close tab'                 ],
    \ }
" }}}
" Buffers:            <leader>+b+{s,l,h,d,t,f,T,q,Q,n,w} {{{
let g:which_key_map['b'] = {
    \ 'name' : '+buffer'      ,
    \ 's'    : [':LeaderfBuffer' , 'Find buffer'            ],
    \ 'l'    : [':bnext'         , 'Next buffer'            ],
    \ 'h'    : [':bprev'         , 'Previous buffer'        ],
    \ 'd'    : [':bdel'          , 'Delete buffer'          ],
    \ 'q'    : [':copen'         , 'Open quickfix'          ],
    \ 'Q'    : [':cclose'        , 'Close quickfix'         ],
    \ 'n'    : [':call multiple_cursors#new("n", 1)' , 'Close quickfix'],
    \ 'w'    : [':w'             , 'Write buffer'           ],
    \ }
" }}}
" Code:             <leader> {{{
let g:which_key_map['C'] = {
    \ 'name' : '+code'      ,
    \ 't'    : [':LeaderfBufTag' , 'Search tags'            ],
    \ 'f'    : [':LeaderfFunction', 'Search functions'      ],
    \ 'T'    : [':Tagbar'        , 'Show Tagbar'            ],
    \ 'w'    : [':w'             , 'Save buffer'            ],
    \ 'u'    : [':MundoToggle'   , 'Show undo'              ],
    \ 'd'    : [':call PhpDoc()' , 'Generate docblock'      ],
    \ 'h'    : ['<S-k>'          , 'Manual entry'           ],
    \ 'n'    : [':Marks'         , 'Bookmarks'              ],
    \ 'm'    : [':BookmarkShowAll', 'Show bookmarks'        ]
    \ }
" }}}
" Mode:                 <leader>+m+{w,z,g,s,n,N} {{{
let g:which_key_map['m'] = {
    \ 'name' : '+mode'              ,
    \ 'z'    : [':ZoomWin'          , 'Zoom window (toggle)' ],
    \ 'G'    : [':GitGutterToggle'  , 'Toggle gutter'        ],
    \ 'g'    : [':Goyo'             , 'Toggle Goyo mode'     ],
    \ 's'    : [':Startify'         , 'Start up page'        ],
    \ 'n'    : [':set number!'      , 'Toggle numbers'       ],
    \ 'N'    : [':set relativenumber!', 'Toggle rel numbers' ],
    \ 'c'    : [':call ToggleColorColumn()', 'Toggle color column' ],
    \ 'S'    : [':syntax on'        , 'Toggle syntax'        ]
    \ }
" }}}
" VCS: <leader>+v+{a,P,f,p,s,c,b,l,d} {{{
let g:which_key_map['v'] = {
    \ 'name' : '+vcs'       ,
    \ 'P'    : [':Git push' , 'Push'                        ],
    \ 'f'    : [':Git fetch', 'Fetch'                       ],
    \ 'p'    : [':Git pull' , 'Pull'                        ],
    \ 's'    : [':vertical Git', 'Status'                   ],
    \ 'l'    : [':GV!'      , 'Log current file'            ],
    \ 'L'    : [':GV'       , 'History (Fugitive)'          ],
    \ 'd'    : [':split +Gdiff', 'Side-by-side diff'        ],
    \ 'S'    : [':tab +Git' , 'Git console'                 ],
    \ 'T'    : [':Tig'      , 'Explore log (tig)'           ],
    \ 'c'    : [':Commits'  , 'Commit history'              ],
    \ 'e'    : [':BCommits' , 'Commits file'                ]
    \ }
" }}}
" Run: <leader>+r+{a,s,t} {{{
let g:which_key_map['r'] = {
    \ 'name' : '+run'       ,
    \ 'a'    : [':echo AsyncRun'    , 'Async run'           ],
    \ 's'    : [':AsyncStop'        , 'Stop async run'      ],
    \ 't'    : [':terminal bash'    , 'Open a terminal'     ],
    \ 'o'    : [':copen'            , 'Open quickfix'       ],
    \ 'r'    : [':RunnerTest'       , 'Run tests'           ],
    \ 'e'    : [':RunnerRun'        , 'Run project'         ],
    \ 'b'    : [':RunnerBuild'      , 'Build'               ]
    \ }
" }}}

let g:which_key_map.V = 'which_key_ignore'
let g:which_key_map.w = 'which_key_ignore'
let g:which_key_map.H = 'which_key_ignore'
let g:which_key_map.q = 'which_key_ignore'
let g:which_key_map.n = 'which_key_ignore'

call which_key#register("<space>", "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey "<space>"<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual "<space>"<CR>
"nnoremap <leader>pw :Ag <C-R><C-W><CR>
nnoremap <leader>pw :Rg <C-R><C-W><CR>
" }}}
