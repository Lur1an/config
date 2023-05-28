ZSH_THEME="awesomepanda" # set by `omz`

export ZSH="/home/lurian/.oh-my-zsh"
zsh_theme="robbyrussell"

plugins=(git poetry)

source $ZSH/oh-my-zsh.sh
alias fd='fdfind'


export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
source ~/.secrets

