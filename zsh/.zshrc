ZSH_THEME="awesomepanda" # set by `omz`

export ZSH="/home/lurian/.oh-my-zsh"
zsh_theme="robbyrussell"

plugins=(git poetry)

source $ZSH/oh-my-zsh.sh
alias fd='fdfind'


export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
source ~/.secrets
alias rel="xrdb merge ~/.xresources && kill -USR1 $(pidof st)"
alias tmux='TERM=screen-256color tmux'
alias ezpush='aicommits --all && git push'

function rust_dev() {
    export RUST_LOG=info
    cargo-watch -x check -x "test $1 -- --nocapture"
}
function boot_windows() {
    systemctl reboot --boot-loader-entry=auto-windows
}

alias rust-dev='rust_dev'
alias boot-windows='boot_windows'

