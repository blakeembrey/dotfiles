# Plugins
source $(brew --prefix)/share/antigen/antigen.zsh

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

# Enable McFly
eval "$(mcfly init zsh)"

# Homebrew completions: https://docs.brew.sh/Shell-Completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Git Extras completions
source $(brew --prefix)/opt/git-extras/share/git-extras/git-extras-completion.zsh

# iTerm integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Pure prompt
autoload -U promptinit; promptinit
prompt pure

# ASDF support
. $(brew --prefix)/opt/asdf/asdf.sh

# GPG TTY support
export GPG_TTY=$(tty)

