/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew bundle

if [ echo $ZSH_NAME != "zsh" ]; then
  chsh -s /bin/zsh
fi

mkdir -p ~/Projects

if [ -d ~/.vim/bundle/Vundle.vim ]; then
  echo "Vundle is already installed..."
else
  sh ./scripts/vim.sh
fi

if which node > /dev/null; then
  echo "Node already exists..."
else
  sh ./scripts/node.sh
fi

ITERM_THEME_OUT_PATH=~/Downloads/Snazzy.itermcolors

curl -L https://github.com/sindresorhus/iterm2-snazzy/raw/master/Snazzy.itermcolors > $ITERM_THEME_OUT_PATH
open $ITERM_THEME_OUT_PATH
rm $ITERM_THEME_OUT_PATH
