# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -F'

# ls with color, list, and .'s
alias ll='ls --color=auto -lA'

# xbps-query and query for the repo
alias xq='xbps-query'
alias xqr='xbps-query -R'


# make dir and cd into it
mkcd () {
	mkdir -p -- "$1" && cd -P -- "$1"
}

# xbps-install -S
alias xin='sudo xbps-install -S'

# system control
#alias shutdown='sudo shutdown -h now'
alias poweroff='sudo poweroff'
alias zzz='sudo zzz'
alias ZZZ='sudo ZZZ'
alias halt='sudo halt'

source /usr/share/bash-completion/bash_completion

# \t time as HH:MM:SS
# \d current day as day,month,date
# \n new line
# \s name of shell
# \W name of current working dir
# \w path of current working dir
# \u username
# \h hostname
# \# add numbers to each command in the prompt
# \$ 
PS1='[\u @ \w ]\$ '
