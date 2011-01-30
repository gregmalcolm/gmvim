" Set the guifont
  set guifont=Monaco:h14

" fullscreen maximizes vertically AND horizontally
  set fuoptions=maxvert,maxhorz

" Don't focus the window when the mouse pointer is moved.
  set nomousefocus

" Hide mouse pointer on insert mode.
  set mousehide

" Hide toolbar and menus.
  set guioptions-=T
  set guioptions-=m

" Scrollbar is always off.
  set guioptions-=rL

" Enable gui tab labels
  set guioptions+=e

" Don't highlight search result.
  set nohlsearch

" Disable bell.
  set vb t_vb=

" Don't flick cursor.
  set guicursor=a:blinkon0

" TABS: safari style tab navigation
  nmap <D-[> :tabprevious<CR>
  nmap <D-]> :tabnext<CR>
  map <D-[> :tabprevious<CR>
  map <D-]> :tabnext<CR>
  imap <D-[> <C-O>:tabprevious<CR>
  imap <D-]> <C-O>:tabnext<CR>

" TABS: Firefox style, open tabs with command-<tab number>
  map <silent> <D-1> :tabn 1<CR>
  map <silent> <D-2> :tabn 2<CR>
  map <silent> <D-3> :tabn 3<CR>
  map <silent> <D-4> :tabn 4<CR>
  map <silent> <D-5> :tabn 5<CR>
  map <silent> <D-6> :tabn 6<CR>
  map <silent> <D-7> :tabn 7<CR>
  map <silent> <D-8> :tabn 8<CR>
  map <silent> <D-9> :tabn 9<CR>

" bind command-] to shift right
  nmap <D-]> >>
  vmap <D-]> >>
  imap <D-]> <C-O>>>

" bind command-[ to shift left
  nmap <D-[> <<
  vmap <D-[> <<
  imap <D-[> <C-O><<

" Change Ctrl+T to CammandT
  map <C-t> :CommandT<CR>

" Unmap Apple+S to remap to Esc, then :w<CR>
  macmenu &File.Save key=<nop>
  imap <D-s> <Esc>:w<CR>
  map <D-s> :w<CR>

" Run file in shell mode with ruby
"  nnoremap <D-r> <Plug>RubyFileRun
"  map <D-r> <Plug>RubyFileRun

" shortcuts for running tests
  nmap <Leader>ra :wa<cr> :RunAllRubyTests<cr>
  nmap <Leader>rc :wa<cr> :RunRubyFocusedContext<cr>
  nmap <Leader>rf :wa<cr> :RunRubyFocusedUnitTest<cr>
  nmap <Leader>rl :wa<cr> :RunLastRubyTest<cr>

" open project view
  nmap <F2> :NERDTreeToggle<cr>
 
" go to the alternate file (previous buffer) with g-enter
  nmap g

" ack for project-wide searching (TRAILING WHITESPACE IS INTENTIONAL)
  nmap g/ :Ack! 
  nmap g* :Ack! -w <C-R><C-W> 
  nmap ga :AckAdd! 
  nmap gn :cnext<cr>
  nmap gp :cprev<cr>
  nmap gq :ccl<cr>

" shortcuts for frequenly used files
  nmap gs :e db/schema.rb<cr>
  nmap gr :e config/routes.rb<cr>

" # to surround with ruby string interpolation
  let g:surround_35 = "#{\r}"
" - to surround with no-output erb tag
  let g:surround_45 = "<% \r %>"
" = to surround with output erb tag
  let g:surround_61 = "<%= \r %>"

" mapping the jumping between splits. Hold control while using vim nav.
  nmap <C-J> <C-W>j
  nmap <C-K> <C-W>k
  nmap <C-H> <C-W>h
  nmap <C-L> <C-W>l

" handy macro expansion
  abbrev Lidsa Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
  iabbrev rdebug require 'ruby-debug'; Debugger.start; Debugger.settings[:autoeval] = 1; Debugger.settings[:autolist] = 1; debugger
  abbrev hte the

" rails.vim mappings
  map <Leader>oc :Rcontroller<Space>
  map <Leader>ov :Rview<Space>
  map <Leader>om :Rmodel<Space>
  map <Leader>oh :Rhelper<Space>
  map <Leader>oj :Rjavascript<Space>
  map <Leader>os :Rstylesheet<Space>
  map <Leader>oi :Rintegration<Space>

" select the lines which were just pasted
  nnoremap vv `[V`]

" shortcuts for running tests
  nmap <Leader>ra :wa<cr> :RunAllRubyTests<cr>
  nmap <Leader>rc :wa<cr> :RunRubyFocusedContext<cr>
  nmap <Leader>rf :wa<cr> :RunRubyFocusedUnitTest<cr>
  nmap <Leader>rl :wa<cr> :RunLastRubyTest<cr>

" open project view
  nmap <F2> :NERDTreeToggle<cr>
 
" go to the alternate file (previous buffer) with g-enter
  nmap g

" ack for project-wide searching (TRAILING WHITESPACE IS INTENTIONAL)
  nmap g/ :Ack! 
  nmap g* :Ack! -w <C-R><C-W> 
  nmap ga :AckAdd! 
  nmap gn :cnext<cr>
  nmap gp :cprev<cr>
  nmap gq :ccl<cr>

" shortcuts for frequenly used files
  nmap gs :e db/schema.rb<cr>
  nmap gr :e config/routes.rb<cr>

" # to surround with ruby string interpolation
  let g:surround_35 = "#{\r}"
" - to surround with no-output erb tag
  let g:surround_45 = "<% \r %>"
" = to surround with output erb tag
  let g:surround_61 = "<%= \r %>"

" mapping the jumping between splits. Hold control while using vim nav.
  nmap <C-J> <C-W>j
  nmap <C-K> <C-W>k
  nmap <C-H> <C-W>h
  nmap <C-L> <C-W>l

" handy macro expansion
  abbrev Lidsa Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
  iabbrev rdebug require 'ruby-debug'; Debugger.start; Debugger.settings[:autoeval] = 1; Debugger.settings[:autolist] = 1; debugger
  abbrev hte the

" rails.vim mappings
  map <Leader>oc :Rcontroller<Space>
  map <Leader>ov :Rview<Space>
  map <Leader>om :Rmodel<Space>
  map <Leader>oh :Rhelper<Space>
  map <Leader>oj :Rjavascript<Space>
  map <Leader>os :Rstylesheet<Space>
  map <Leader>oi :Rintegration<Space>

" select the lines which were just pasted
  nnoremap vv `[V`]


