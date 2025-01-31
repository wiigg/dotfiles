export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# User config

export EDITOR="nvim"

# Paths
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/python@3.12/libexec/bin:$PATH"
export PATH="/usr/local/smlnj/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Ruby gem paths
export GEM_HOME="/opt/homebrew/lib/ruby/gems/3.3.0/bin"
export GEM_PATH="/opt/homebrew/lib/ruby/gems/3.3.0/bin"

# Tcl/Tk env vars
export LDFLAGS="-L/usr/local/opt/tcl-tk/lib"
export CPPFLAGS="-I/usr/local/opt/tcl-tk/include"
export PKG_CONFIG_PATH="/usr/local/opt/tcl-tk/lib/pkgconfig"

# Aliases
alias vim=nvim
alias vi=nvim
alias py=python3

# 1P plugins
if [ -f "$HOME/.config/op/plugins.sh" ]; then
    source "$HOME/.config/op/plugins.sh"
fi
