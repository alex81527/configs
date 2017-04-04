"Author: W. Alex Chen 
"Date:   April 3, 2017
"Email:  alex81527@gmail.com


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

"Plugin 'bling/vim-airline'
"Plugin 'kien/ctrlp.vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"Custom setting starts from here
"Using :help to walk through each setting, :help tabstop 

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

