# Plugins
source /usr/local/share/antigen/antigen.zsh

# Source aliases
source $HOME/.aliasesrc
source $HOME/.localrc

# Initialize antigen
antigen init $HOME/.antigenrc

# Customize to your needs...
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Cabal packages
export PATH="$HOME/.cabal/bin:$PATH"

# Anaconda
. /usr/local/anaconda3/etc/profile.d/conda.sh

# Homebrew
export PATH="/usr/local/sbin:$PATH"

# NPM
export PATH="$HOME/.node_modules/bin:$PATH"

# Go path
export GOPATH="$HOME/Projects/go"
export PATH="$GOPATH/bin:$PATH"

# Kube config
export KUBECONFIG="$HOME/.kube/config:$HOME/.kube/honeycomb-config"

# Google App Engine credentials
export GOOGLE_APPLICATION_CREDENTIALS="$HOME/Credentials/aws-k8s-7bb486b54cab.json"

# Initialize rbenv
eval "$(rbenv init -)"

# Enable https://github.com/nvbn/thefuck
eval "$(thefuck --alias)"

# Enable direnv
eval "$(direnv hook zsh)"

# Git Extras completions
source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh

# iTerm integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
