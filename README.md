# Vim  
## Use Vundle plugin manager  
1. Setup [Vundle.vim](https://github.com/VundleVim/Vundle.vim)  
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`  

2. Download .vimrc  
`curl -sSL https://raw.githubusercontent.com/alex81527/configs/master/.vimrc
-o ~/.vimrc`  
 open vim, and type `:PluginInstall` to install plugins.  

### Plugins:  
* [Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe)  
* [vim-syntastic/syntastic](https://github.com/vim-syntastic/syntastic)  
* [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)  
* [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)  
* [vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)  
* [flazz/vim-colorschemes](https://github.com/flazz/vim-colorschemes)  
## Plugin specific configuration  
### YouCompleteMe  
1. Assume YCM is installed by Vundle at `~/.vim/bundle/YouCompleteMe`.  
2. Compile the `ycm_core` library that YCM needs. Make sure you have `cmake` and `python headers` installed.  
    (For Ubuntu: `sudo apt-get install cmake python-dev python3-dev`)  
    (For Archlinux: `sudo pacman -S cmake python2 python`)  
Compiling YCM with semantic support for C-family languages:  
    `cd ~/.vim/bundle/YouCompleteMe && ./install.py --clang-completer`  
3. YCM relies on `libclang`, which requires a set of [compile flags](https://github.com/Valloric/YouCompleteMe#c-family-semantic-completion) in order to parse your code.  
    Download sample config from here:  
    `curl -ssL https://raw.githubusercontent.com/Valloric/ycmd/master/cpp/ycm/.ycm_extra_conf.py -o ~/.ycm_extra_conf.py`  
    Add these to your .vimrc:  
```
"Settings for YouCompleteMe                                                     
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'                        
"no confirmation for ycm_confirm_extra_conf each time                           
let g:ycm_confirm_extra_conf = 0                                                
"debug info, use :YcmToggleLogs stderr to examine errors                        
let g:ycm_server_keep_logfiles = 1   
let g:ycm_server_log_level = 'debug'
 ```
   
### Syntastic  
See [FAQ](https://github.com/vim-syntastic/syntastic#4-faq) section.  


# Zsh  
## Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).  
`sh -c "$(curl -fsSL
https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`  

## Download .zshrc  
`curl -sSL https://raw.githubuserusercontent.com/alex81527/configs/master/.zshrc
-o ~/.zshrc`  
