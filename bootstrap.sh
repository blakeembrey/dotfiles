/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/opt/homebrew/bin/brew shellenv)"

brew bundle

if [ echo $ZSH_NAME != "zsh" ]; then
  chsh -s /bin/zsh
fi

asdf plugin-add nodejs
asdf plugin-add golang
asdf plugin-add python
asdf plugin-add direnv
asdf install direnv latest
asdf global direnv latest
