# Plugins
source /usr/local/share/antigen/antigen.zsh

# Source additional config.
source $HOME/.aliasesrc
source $HOME/.antigenrc

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

# NPM packages
export PATH="$HOME/.npm-packages/bin:$PATH"

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Cabal packages
export PATH="$HOME/.cabal/bin:$PATH"

# Homebrew
export PATH="/usr/local/sbin:$PATH"

# Initialize rbenv
eval "$(rbenv init -)"

# Enable https://github.com/nvbn/thefuck
eval "$(thefuck --alias)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
