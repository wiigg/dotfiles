export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

[[ -s "$ZSH/oh-my-zsh.sh" ]] && source "$ZSH/oh-my-zsh.sh"

export EDITOR="nvim"

# Paths
typeset -xU path
add_to_path() { [[ -d $1 ]] && path=("$1" $path) }

add_to_path "/opt/homebrew/opt/make/libexec/gnubin"
add_to_path "/opt/homebrew/bin/python3"
add_to_path "/usr/local/smlnj/bin"
add_to_path "$HOME/.local/bin"

# Tcl/Tk env vars
if command -v brew >/dev/null; then
  tk_prefix="$(brew --prefix tcl-tk)"
  export LDFLAGS="-L${tk_prefix}/lib"
  export CPPFLAGS="-I${tk_prefix}/include"
  export PKG_CONFIG_PATH="${tk_prefix}/lib/pkgconfig"
fi

# Aliases
alias vim=nvim
alias vi=nvim
alias python=python3
alias py=python

alias gs='git status'
alias ga='git add -A'
alias gap='git add -p'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'

# 1P plugins
if [ -f "$HOME/.config/op/plugins.sh" ]; then
    source "$HOME/.config/op/plugins.sh"
fi

# Useful functions
mkcd() {
  mkdir -p "$1" && cd "$1"
}
