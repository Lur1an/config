ZSH_THEME="awesomepanda" # set by `omz`

export ZSH="/home/lurian/.oh-my-zsh"
zsh_theme="robbyrussell"

plugins=(git poetry)

source $ZSH/oh-my-zsh.sh
alias fd='fdfind'


export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/lurian/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/lurian/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/lurian/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/lurian/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

