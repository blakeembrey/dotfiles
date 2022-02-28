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

# Anaconda
. $HOMEBREW_PREFIX/anaconda3/etc/profile.d/conda.sh

# Go path
export GOPATH="$HOME/Projects/go"
export PATH="$GOPATH/bin:$PATH"

# Kube config
export KUBECONFIG="$HOME/.kube/config:$HOME/.kube/honeycomb-config"

######### od shell tooling #########
# these lines added by `code/scripts/development/maybe_install_od_shell_tooling.sh`
OD_CODE_ROOT="/Users/blakeembrey/Projects/go/src/github.com/opendoor-labs/code"
OD_TOOL_SOURCE_SCRIPT="$OD_CODE_ROOT/scripts/infra/sourced_on_shell_load.sh"
[ -f "$OD_TOOL_SOURCE_SCRIPT" ] && source "$OD_TOOL_SOURCE_SCRIPT"
######### end of od shell tooling #########

export PATH="$HOME/.poetry/bin:$PATH"
