EDITOR="nvim"

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

# smlnj
export PATH="/usr/local/smlnj/bin:$PATH"

# ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export GEM_HOME="/opt/homebrew/lib/ruby/gems/3.3.0/bin"
export GEM_PATH="/opt/homebrew/lib/ruby/gems/3.3.0/bin"

# tcl/tk
export LDFLAGS="-L/usr/local/opt/tcl-tk/lib"
export CPPFLAGS="-I/usr/local/opt/tcl-tk/include"
export PKG_CONFIG_PATH="/usr/local/opt/tcl-tk/lib/pkgconfig"
