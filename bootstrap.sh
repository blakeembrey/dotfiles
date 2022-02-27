/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/opt/homebrew/bin/brew shellenv)"

brew bundle

if [ echo $ZSH_NAME != "zsh" ]; then
  chsh -s /bin/zsh
fi

# Set up asdf.
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0

asdf plugin-add nodejs
asdf plugin-add golang
asdf plugin-add python
asdf plugin-add direnv
asdf install direnv latest
asdf global direnv latest

# Download color theme for terminal.
ITERM_THEME_OUT_PATH=~/Downloads/Snazzy.itermcolors
curl -L https://github.com/sindresorhus/iterm2-snazzy/raw/main/Snazzy.itermcolors > $ITERM_THEME_OUT_PATH
open $ITERM_THEME_OUT_PATH
rm $ITERM_THEME_OUT_PATH
