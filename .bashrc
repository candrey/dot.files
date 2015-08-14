# enable bash completion in interactive shells
#if [ -f /usr/local/share/bash-completion/bash_completion.sh ]; then
#        . /usr/local/share/bash-completion/bash_completion.sh
#fi

[[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]] && \
        source /usr/local/share/bash-completion/bash_completion.sh

complete -cf sudo

shopt -s histappend
PROMPT_COMMAND="history -a"

# don't put duplicate lines in the history.
export HISTSIZE=5000
export HISTFILESIZE=10000
export HISTCONTROL=ignoreboth
export HISTIGNORE="&:ls:[bf]g:exit"
export HISTTIMEFORMAT="%d/%m/%y %T "
#HISTCONTROL=ignorespace



## Colour Prompt
#export PS1="\[\e[00;31m\]\d\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;33m\]\A\[\e[0m\]\[\e[00;37m\]\n\[\e[0m\]\[\e[00;33m\][\[\e[0m\]\[\e[00;32m\]\u\[\e[0m\]\[\e[00;36m\]@\[\e[0m\]\[\e[00;32m\]\h\[\e[0m\]\[\e[00;37m\]: \[\e[0m\]\[\e[00;36m\]\W\[\e[0m\]\[\e[00;33m\]]\[\e[0m\]\[\e[00;32m\]\\$\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"
export PS1="\[\e[01;31m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;32m\]\h\[\e[0m\]\[\e[00;37m\]:[\[\e[0m\]\[\e[01;33m\]\w\[\e[0m\]\[\e[00;37m\]]\[\e[0m\]\[\e[00;32m\]\\$\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"
export LSCOLORS="HxGxexexCxDxDxBxBxacac"

alias ll='ls -ahlFG'
alias la='ls -AG'
alias l='ls -aCFG'
alias tmux='tmux -2'
