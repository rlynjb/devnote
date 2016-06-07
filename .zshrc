# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pygmalion"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git go)
source $ZSH/oh-my-zsh.sh

# User configuration
#export GOPATH="$HOME/gocode"
#export PATH=$PATH:/usr/local/go/bin
#:$GOPATH/bin

eval "$(direnv hook zsh)"
