execute pathogen#infect()
filetype plugin indent on

syntax on
set laststatus=2
set mouse=nicr
set nu
set cursorline "highlight current line
colorscheme gruvbox
set background=dark

set tabstop=4
set shiftwidth=4
set expandtab

set nowrap

if 1
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" "set the cursor to a vertical bar when entering insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" "set the cursor to a block when exiting insert mode
endif

let g:airline_theme=gruvbox
"let s:N3 = airline#themes#get_highlight('VertSplit')
"show list of buffers
let g:airline#extensions#tabline#enabled = 1
"show just the filenames
let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline_left_sep='▶'
"let g:airline_right_sep='◀'

set vb "disables beeping
set whichwrap+=<,>,h,l,[,]

vsp

