EDITOR=$(which nvim)

export ZSH="$HOME/.oh-my-zsh"
export XDG_CONFIG_HOME="$HOME/.config"

ZSH_THEME="robbyrussell"

plugins=(git asdf poetry rustup cargo deno hugo zellij)

export BREW_PATH=/opt/homebrew/bin
export PATH=$PATH:$BREW_PATH:~/.cargo/bin/

eval "$(brew shellenv)"
source $ZSH/oh-my-zsh.sh

alias love="/Applications/love.app/Contents/MacOS/love"

autoload -Uz compinit
compinit

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/owais/.opam/opam-init/init.zsh' ]] || source '/Users/owais/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

eval "$(oh-my-posh init zsh --config ~/.omp.json)"

# dune
source $HOME/.local/share/dune/env/env.zsh
