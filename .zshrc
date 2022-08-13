source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
alias ls='ls --color=auto'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
autoload -Uz vcs_info

precmd () { vcs_info }

zstyle ':vcs_info:*' formats ' %s(%F{014}%b%f)'

autoload -Uz colors

setopt prompt_subst

NEWLINE=$'\n'

PS1='%F{010}%n@%m%f %F{006}%2~%f${vcs_info_msg_0_} ${NEWLINE}%(?.%F{010 }  .%F{009}[%?] )%F{006}%f '

GPG_TTY=$(tty)
export GPG_TTY

