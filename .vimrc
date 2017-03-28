"Using :help to walk through each setting
"E.g. :help tabstop 

"Can open big5-encoded files automatically
set fileencoding=utf-8
set fileencodings=utf-8,big5,default

"Colorscheme
syntax on
set background=dark
colorscheme desert

"Let backspace behaves like most other apps
"http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=2
"set backspace=indent,eol,start

"Tab replaced with 4 spaces, auto indent
"http://vim.wikia.com/wiki/Indenting_source_code
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent

"Width indicator for 72 and 80, auto word wrapping
"http://vim.wikia.com/wiki/Automatic_word_wrapping

set colorcolumn=72,80
set textwidth=80
set formatoptions+=t

"Visual code review helper
set ruler
set number
"set cursorline   <--vim may respond respond slowly on large file
"set cursorcolumn

"Improve vim performance on terminals (xterm, rxvt, etc)
set ttyfast
set more

"Autoread file when changed from outside
set autoread
"
"Start scrolling when we're 8 lines away from margins
set scrolloff=8 
set sidescrolloff=15
set sidescroll=1

"Highlight & Incremental search
set hlsearch
set incsearch

"Show matching brackets
set showmatch
"How many tenths of a second to blink when matching brackets
set matchtime=2
"The last window will have a status line 
set laststatus=2

