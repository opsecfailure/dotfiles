export PATH="${PATH}:$HOME/.local/bin"

export XDG_CACHE_HOME="$HOME"/.cache
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_STATE_HOME="$HOME"/.local/state

export XDG_DOCUMENTS_DIR="$HOME/Documents"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_PICTURES_DIR="$HOME/Pictures"
export XDG_PODCASTS_DIR="$HOME/Podcasts"
export XDG_SCREENSHOTS_DIR="$XDG_PICTURES_DIR/Screenshots"
export XDG_VIDEOS_DIR="$HOME/Videos"

export TERMINAL="foot"
export EDITOR="nvim"
export VISUAL=$EDITOR
export DIFFPROG="$EDITOR -d"
export BROWSER="qutebrowser"

export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/password-store
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export WGETRC="$XDG_CONFIG_HOME"/wget/wgetrc
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR"/ssh-agent.socket
export ELECTRON_OZONE_PLATFORM_HINT="auto"
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1

if [[ $(tty) = /dev/tty1 ]]; then
    exec sway
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
