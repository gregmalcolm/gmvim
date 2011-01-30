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
