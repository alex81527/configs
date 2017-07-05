"Author: W. Alex Chen 
"Date:   April 15, 2017 UTC+8 
"Email:  alex81527@gmail.com
"Github: http://github.com/alex81527


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
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/Conque-GDB'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-commentary'
Plugin 'yggdroot/indentline'
Plugin 'Chiel92/vim-autoformat'
"Plugin 'sirver/ultisnips'
"Plugin 'honza/vim-snippets'
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Custom setting starts from here
"Using :help to walk through each setting, e.g., :help tabstop 

"Let vim detect file encodings automatically, if vim can not detect it correctly
"Use :e ++enc=big5 [++ff=unix] to reopen the file with a specific encoding
"fileformat can be unix, dos, mac


"Colorscheme
syntax on
"set background=dark
colorscheme molokai

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

set colorcolumn=73,81
highlight colorcolumn ctermbg=5
"set textwidth=80
"set formatoptions+=t

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

"copy/paste between different vim instances
set clipboard=unnamedplus

"Key bindings
nmap <C-k> <PageUp>
nmap <C-j> <PageDown>
nmap <silent> <S-Left> :wincmd h<CR>
nmap <silent> <S-Right> :wincmd l<CR>
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
noremap <F4> :Autoformat<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"Use this option to specify the height of the location lists syntastic opens
let g:syntastic_loc_list_height = 7
"Set checkers, e.g., let g:syntastic_<filetype>_checkers = ['<checker-name>']
let g:syntastic_c_checkers = ['clang_check']
let g:syntastic_cpp_checkers = ['clang_check']
let g:syntastic_sh_checkers = ['shellcheck']
let g:syntastic_python_checkers = ['flake8']
"syntastic_<checker>_config: specific configuration for each checker
let g:syntastic_clang_check_config_file = ".syntastic_clang_check_config"
" File containing compilation flags (such as defines or include directories),
" one option per line (cf. |syntastic-config-files|).
" E.g.
" -DDEBUG
" -include ../config.h
" -I../common
" -I/usr/include/c++/4.5.3/

"Syntastic can be used together with the 'YouCompleteMe' Vim plugin (see         
"http://valloric.github.io/YouCompleteMe/). However, by default 'YouCompleteMe'  
"disables syntastic's checkers for the 'c', 'cpp', 'objc', and 'objcpp'          
"filetypes, in order to allow its own checkers to run. If you want to use YCM's  
"identifier completer but still run syntastic's checkers for those filetypes you 
"have to set g:ycm_show_diagnostics_ui to 0.  
" let g:ycm_show_diagnostics_ui = 0
"For debugging, set to 0 for not logging
"let g:syntastic_debug = 3
"let g:syntastic_debug_file = '~/syntastic_debug'


"Settings for vim-airline
"This is disabled by default; add the following to your vimrc to enable 
"the extension:
let g:airline#extensions#tabline#enabled = 1
"Separators can be configured independently for the tabline, so here is
"how you can define 'straight' tabs:
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"Integrating with powerline fonts
"Install here: https://github.com/powerline/fonts
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'


"Settings for AutoFormat
let g:formatdef_my_custom_c = '"clang-format -style=google"'
let g:formatters_c = ['my_custom_c']
let g:formatdef_my_custom_cpp = '"clang-format -style=google"'
let g:formatters_cpp = ['my_custom_cpp']
let g:formatdef_my_custom_py = '"yapf --style google"'
let g:formatters_python = ['my_custom_py']

" "Settings for YouCompleteMe
" let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'                   
" "no confirmation for ycm_confirm_extra_conf each time
" let g:ycm_confirm_extra_conf = 0
" "debug info, use :YcmToggleLogs stderr to examine errors
" let g:ycm_server_keep_logfiles = 1
" let g:ycm_server_log_level = 'debug'
