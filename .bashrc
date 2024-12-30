# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -z "$TMUX" ] && [[ $(tty) != /dev/tty1 ]]; then
    exec env TERM=xterm-mono tmux
fi

export ESCDELAY=0
export FZF_DEFAULT_OPTS="--no-scrollbar --border=sharp"
export MAKEFLAGS="--jobs=$(nproc)"
export MANWIDTH=66
export HISTSIZE=1000000
export NO_COLOR=1
export PROMPT_COMMAND="history -a"

. /usr/share/git/completion/git-prompt.sh
PS1='\[\e[1m\]\u@\h:[\w]$(__git_ps1 "(%s)")\$\[\e[0m\] '

complete -F _command doas

eval "$(fzf --bash)"
