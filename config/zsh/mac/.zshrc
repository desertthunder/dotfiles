export EDITOR=$(which nvim)

export ZSH="$HOME/.oh-my-zsh"
export XDG_CONFIG_HOME="$HOME/.config"

export ZSH_THEME="robbyrussell"

export plugins=(git asdf poetry rustup cargo deno hugo zellij)

export BREW_PATH=/opt/homebrew/bin
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export PATH=$PATH:$BREW_PATH:~/.cargo/bin/

eval "$(brew shellenv)"
source "$ZSH/oh-my-zsh.sh"

alias love="/Applications/love.app/Contents/MacOS/love"

autoload -Uz compinit
compinit

# Check for flutter
if [ -d "$HOME/SDKs/flutter" ]; then
  export PATH="$PATH:$HOME/SDKs/flutter/bin"
fi

if [ -d "$HOME/Library/Android/sdk" ]; then
  export ANDROID_HOME=~/Library/Android/sdk
  export PATH=$PATH:$ANDROID_HOME/emulator
  export PATH=$PATH:$ANDROID_HOME/tools
  export PATH=$PATH:$ANDROID_HOME/tools/bin
  export PATH=$PATH:$ANDROID_HOME/platform-tools
fi

if [ -d "$HOME/.pub-cache/bin" ]; then
  export PATH="$PATH":"$HOME/.pub-cache/bin"
fi

# Scala/Coursier
if [ -d "$HOME/Library/Application Support/Coursier/bin" ]; then
  export PATH="$PATH:$HOME/Library/Application Support/Coursier/bin"
fi

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '$HOME/.opam/opam-init/init.zsh' ]] || source '$HOME/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

eval "$(oh-my-posh init zsh --config ~/.omp.json)"

# dune
source "$HOME/.local/share/dune/env/env.zsh"
