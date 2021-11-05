/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/opt/homebrew/bin/brew shellenv)"

brew bundle

if [ echo $ZSH_NAME != "zsh" ]; then
  chsh -s /bin/zsh
fi

if [ -d ~/.vim/bundle/Vundle.vim ]; then
  echo "Vundle is already installed..."
else
  sh ./scripts/vim.sh
fi

ITERM_THEME_OUT_PATH=~/Downloads/Snazzy.itermcolors

curl -L https://github.com/sindresorhus/iterm2-snazzy/raw/main/Snazzy.itermcolors > $ITERM_THEME_OUT_PATH
open $ITERM_THEME_OUT_PATH
rm $ITERM_THEME_OUT_PATH
