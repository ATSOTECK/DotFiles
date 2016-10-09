execute pathogen#infect()
filetype plugin indent on

syntax on "syntax hylight on
set laststatus=2 "always show the status bar at the bottom
set mouse=nicr "allows clicking with the mouse
set nu "show the number lines
set cursorline "highlight current line
colorscheme gruvbox
set background=dark

set tabstop=4
set shiftwidth=4
set expandtab

set nowrap "no linewrap

let &t_SI = "\<Esc>]50;CursorShape=1\x7" "set the cursor to a vertical bar when entering insert mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7" "set the cursor to a block when exiting insert mode

let g:airline_theme=gruvbox
"let s:N3 = airline#themes#get_highlight('VertSplit')
"show list of buffers
let g:airline#extensions#tabline#enabled = 1
"show just the filenames
let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline_left_sep='▶'
"let g:airline_right_sep='◀'

let g:airline_left_sep=''
let g:airline_right_sep=''

set vb "disables beeping
set whichwrap+=<,>,h,l,[,]

vsp
au BufRead,BufNewFile * startinsert

"remove scrollbars in the gui mode
"set guioptions-=r
"set guioptions-=R
"set guioptions-=l
"set guioptions-=L

