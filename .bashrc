# If not running interactively, don't do anything
[[ ${-} != *i* ]] && return

if [ -z "${TMUX}" ] && [[ $(tty) != "/dev/tty1" ]]; then
    exec env TERM=xterm-mono tmux
fi

export ESCDELAY=0
export FZF_DEFAULT_OPTS="--tmux --border=sharp"
export MAKEFLAGS="--jobs=$(nproc)"
export MANWIDTH=66
export HISTSIZE=1000000
export HISTFILE="${HOME}/.sh_history"
export NO_COLOR=1
export PROMPT_COMMAND="history -a"

. /usr/share/git/completion/git-prompt.sh
PS1='\[\e[1m\]\u@\h:[\w]$(__git_ps1 "(%s)")\$\[\e[0m\] '

complete -F _command doas

eval "$(fzf --bash)"

# https://wiki.archlinux.org/title/GnuPG#SSH_agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null
