ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

source ./brew.sh

chsh -s /bin/zsh

source ./setup.sh

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

git config --global core.editor $(which vim)
