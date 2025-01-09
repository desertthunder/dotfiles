export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git asdf sudo rustup cargo)

source $ZSH/oh-my-zsh.sh

. "$HOME/.cargo/env"

eval "$(oh-my-posh init zsh --config ~/.omp.json)"
