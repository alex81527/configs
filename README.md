# Vim  
### Quick setup 
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/alex81527/configs/master/vim-setup.sh)"`

### Plugins:  
* [Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe) auto completion  
* [vim-syntastic/syntastic](https://github.com/vim-syntastic/syntastic)   syntax check  
* [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)  directory browsing  
* [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)  fancy statusline  
* [vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes) 
* [flazz/vim-colorschemes](https://github.com/flazz/vim-colorschemes)  

## Plugin specific configuration  
### YouCompleteMe  
* [Compile the ycm_core library](https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64)  
  
* [Give YCM compile flags to parse your code](https://github.com/Valloric/YouCompleteMe#c-family-semantic-completion)  
    Download sample config from here:  
    `curl -ssL https://raw.githubusercontent.com/Valloric/ycmd/master/cpp/ycm/.ycm_extra_conf.py -o ~/.ycm_extra_conf.py`  
    Add these to your .vimrc:  
```
"Settings for YouCompleteMe                                                     
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'                        
"no confirmation for ycm_confirm_extra_conf each time                           
let g:ycm_confirm_extra_conf = 0                     
 ```
   
### Syntastic  
* See [FAQ](https://github.com/vim-syntastic/syntastic#4-faq) section.  
* Doc: `~/.vim/bundle/syntastic/doc`
----
# Zsh  
* Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).  
`sh -c "$(curl -fsSL
https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`  
* Download .zshrc  
`curl -sSL https://raw.githubusercontent.com/alex81527/configs/master/.zshrc
-o ~/.zshrc`  
