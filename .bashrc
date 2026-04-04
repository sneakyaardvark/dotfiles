# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -F'

# ls with color, list, and .'s
alias ll='ls --color=auto -lA'

# xbps-query and query for the repo
alias xq='xbps-query'
alias xqr='xbps-query -R'

alias yt-dlp-ubn='yt-dlp -o "%(webpage_url_basename)s.%(ext)s"'

alias su-postgre='sudo -iu postgres psql'

ytdlpubn () {
 yt-dlp -o "$1 %(webpage_url_basename)s.%(ext)s" "$2"
}

mp3fix () {
  ffmpeg -i "$1" -acodec copy "len_fix $1"
}


# make dir and cd into it
mkcd () {
	mkdir -p -- "$1" && cd -P -- "$1"
}

# https://codeberg.org/dnkl/foot/wiki#user-content-spawning-new-%20%20%20%20%20%20%20terminal-instances-in-the-current-working-directory
osc7_cwd() {
    local strlen=${#PWD}
    local encoded=""
    local pos c o
    for (( pos=0; pos<strlen; pos++ )); do
        c=${PWD:$pos:1}
        case "$c" in
            [-/:_.!\'\(\)~[:alnum:]] ) o="${c}" ;;
            * ) printf -v o '%%%02X' "'${c}" ;;
        esac
        encoded+="${o}"
    done
    printf '\e]7;file://%s%s\e\\' "${HOSTNAME}" "${encoded}"
}
PROMPT_COMMAND=${PROMPT_COMMAND:+${PROMPT_COMMAND%;}; }osc7_cwd

# xbps-install -S
alias xin='sudo xbps-install -S'

# system control
#alias shutdown='sudo shutdown -h now'
alias poweroff='sudo poweroff'
alias zzz='sudo zzz'
alias ZZZ='sudo ZZZ'
alias halt='sudo halt'
alias reboot='sudo reboot'

# commands preceded by a space will not be recorded in bash history
HISTCONTROL=ignorespace

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"
export PATH="$HOME/app/zig/0.15.2:$PATH"
export PATH="$HOME/app/zls/0.15.1:$PATH"
