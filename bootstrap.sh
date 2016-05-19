/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew bundle

chsh -s /bin/zsh

sh ./setup.sh

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

git config --global core.editor $(which vim)
git config --global user.name "Blake Embrey"
git config --global user.email "hello@blakeembrey.com"

mkdir -p ~/Projects

sh ./scripts/node.sh
