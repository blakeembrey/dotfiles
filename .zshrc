# Plugins
source $HOMEBREW_PREFIX/share/antigen/antigen.zsh

# Source aliases
source $HOME/.aliasesrc
source $HOME/.localrc

# Initialize antigen
antigen init $HOME/.antigenrc

# Enable https://github.com/nvbn/thefuck
eval "$(thefuck --alias)"

# asdf: https://asdf-vm.com/guide/getting-started.html#_3-install-asdf
. $HOME/.asdf/asdf.sh

# Enable direnv
eval "$(asdf exec direnv hook zsh)"

# Enable McFly
eval "$(mcfly init zsh)"

# Git Extras completions
source $HOMEBREW_PREFIX/opt/git-extras/share/git-extras/git-extras-completion.zsh

# Homebrew completions: https://docs.brew.sh/Shell-Completion
FPATH=$HOMEBREW_PREFIX/share/zsh/site-functions:$FPATH
autoload -Uz compinit; compinit

# iTerm integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Init zoxide
eval "$(zoxide init zsh)"

# Pure prompt
autoload -U promptinit; promptinit
prompt pure

# GPG TTY support
export GPG_TTY=$(tty)

# Node.js installation path
export N_PREFIX="$HOME/.n"
export PATH="$N_PREFIX/bin:$HOME/.node_modules/bin:$PATH"
