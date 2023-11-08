ZSH_THEME="awesomepanda" # set by `omz`

export ZSH="/home/lurian/.oh-my-zsh"
zsh_theme="robbyrussell"

plugins=(git poetry)

source $ZSH/oh-my-zsh.sh
alias fd='fdfind'


export CARGO_TERM_COLOR=always
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
source ~/.secrets
alias rel="xrdb merge ~/.xresources && kill -USR1 $(pidof st)"
alias tmux='TERM=screen-256color tmux'
alias ezpush='aicommits --all && git push'

function rust_dev() {
    RUST_LOG=info cargo-watch -x check -x "test $1 -- --nocapture"
}
function boot_windows() {
    systemctl reboot --boot-loader-entry=auto-windows
}

alias rust-dev='rust_dev'
alias boot-windows='boot_windows'

# bun completions
[ -s "/home/lurian/.bun/_bun" ] && source "/home/lurian/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/home/lurian/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
