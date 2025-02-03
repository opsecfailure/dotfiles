export PATH="${PATH}:${HOME}/.local/bin"

export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

export XDG_DOCUMENTS_DIR="${HOME}/docs"
export XDG_DOWNLOAD_DIR="${HOME}/dl"
export XDG_PICTURES_DIR="${HOME}/pics"
export XDG_BACKGROUNDS_DIR="$XDG_PICTURES_DIR/bg"
export XDG_SCREENSHOTS_DIR="$XDG_PICTURES_DIR/ss"
export XDG_PODCASTS_DIR="${HOME}/casts"
export XDG_VIDEOS_DIR="${HOME}/vids"

export TERM="xterm-mono"
export EDITOR="nvim"
export VISUAL="${EDITOR}"
export DIFFPROG="${EDITOR} -d"
export TERMINAL="foot"
export BROWSER="qutebrowser"
export MAILDIR="${XDG_DATA_HOME}/maildir"

export GOPATH="${XDG_DATA_HOME}/go"
export GOMODCACHE="${XDG_CACHE_HOME}/go/mod"
export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"
export CARGO_HOME="${XDG_DATA_HOME}/cargo"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME}/password-store"
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1

[ "$(tty)" = "/dev/tty1" ] && exec sway

[ -f ~/.bashrc ] && . ~/.bashrc
