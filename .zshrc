# Plugins
source /usr/local/share/antigen/antigen.zsh

# Source aliases
source $HOME/.aliasesrc

# Initialize antigen
antigen init $HOME/.antigenrc

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Cabal packages
export PATH="$HOME/.cabal/bin:$PATH"

# Homebrew
export PATH="/usr/local/sbin:$PATH"

# NPM
export PATH="$HOME/.node_modules/bin:$PATH"

# Initialize rbenv
eval "$(rbenv init -)"

# Enable https://github.com/nvbn/thefuck
eval "$(thefuck --alias)"

# Enable direnv
eval "$(direnv hook zsh)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
