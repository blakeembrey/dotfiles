# Plugins
source /usr/local/share/antigen/antigen.zsh

# Source aliases
source $HOME/.aliasesrc
source $HOME/.localrc

# Initialize antigen
antigen init $HOME/.antigenrc

# Customize to your needs...
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

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

# Homebrew completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Git Extras completions
source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh

# iTerm integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
