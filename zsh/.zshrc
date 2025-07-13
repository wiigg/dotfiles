export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export EDITOR="nvim"

# Paths
add_to_path() {
  case ":$PATH:" in
    *":$1:"*) ;;
    *) export PATH="$1:$PATH" ;;
  esac
}

add_to_path "/opt/homebrew/opt/make/libexec/gnubin"
add_to_path "/opt/homebrew/opt/python@3.13/libexec/bin"
add_to_path "/usr/local/smlnj/bin"
add_to_path "$HOME/.local/bin"

# Tcl/Tk env vars
export LDFLAGS="-L/usr/local/opt/tcl-tk/lib"
export CPPFLAGS="-I/usr/local/opt/tcl-tk/include"
export PKG_CONFIG_PATH="/usr/local/opt/tcl-tk/lib/pkgconfig"

# Aliases
alias vim=nvim
alias vi=nvim
alias py=python

alias gs='git status'
alias ga='git add .'
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
