echo '================================================================='
echo 'Setting up Vundle...'
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo 'Fetching .vimrc config file...'
curl -sSL https://raw.githubusercontent.com/alex81527/configs/master/.vimrc \
    -o ~/.vimrc
echo '[~/.vimrc] updated.'

echo 'Fetching cscope plugin for vim...'
mkdir -p ~/.vim/plugin
curl -sSL http://cscope.sourceforge.net/cscope_maps.vim \
    -o ~/.vim/plugin/cscope_maps.vim
echo '[~/.vim/plugin/cscope_maps.vim] updated.'

echo 'Installing vim plugins...'
# Use an empty vimrc to avoid errors before plugins are installed
touch tmprc
vim -u tmprc +PluginInstall +qall
rm -f tmprc

echo 'Install powerline fonts for vim-airline plugin...'
mkdir -p ~/AUR_PKG
cd ~/AUR_PKG && git clone https://github.com/powerline/fonts.git && \
    sh fonts/install.sh

#In some distributions, Terminess Powerline is ignored by default and must be 
#explicitly allowed.
mkdir -p "$HOME/.config/fontconfig/conf.d"
echo 'cp fontconfig files for powerline fonts...'
cp fonts/fontconfig/* "$HOME/.config/fontconfig/conf.d/"
fc-cache -vf

rm -rf ~/AUR_PKG/fonts
echo '================================================================='
