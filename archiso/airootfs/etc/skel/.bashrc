#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -l --color=auto'
alias grep='grep --color=auto'

PS1="\e[0;31m┌──[\e[0;31m\u\e[0;36m❖\e[0;32m SNIGDHAOS\e[0;31m]\n└──╼\e[0;32m[$(ip -4 addr | grep -v '127.0.0.1' | grep -v 'secondary' | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | sed -z 's/\n/|/g;s/|\$/\n/' | rev | cut -c 2- | rev)]\[\e[0;31m\]\$(pwd) $ \[\e[0m\]"

if [[ $1 != no-repeat-flag && -z $NO_REPETITION ]]; then
  neofetch
fi


# Snigdha OS Useful Aliases
alias c='clear'
alias cl='clear'
alias clr='clear'
alias q='exit'
alias qt='exit'
alias ll='ls -la --color=auto'
alias sync='sudo pacman -Syy'
alias install='sudo pacman -S'
alias uninstall='sudo pacman -Rs'
alias clean='sudo pacman -Rns $(pacman -Qtdq)'
alias dir='dir --color=auto'
alias update='sudo pacman -Sy'
alias upgrade='sudo pacman -Syyu'
alias listpack='sudo pacman -Qq'
# alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"

# Debian -> Arch
alias apt='man pacman'
alias apt-get='man pacman'
alias please='sudo'
alias tb='nc termbin.com 9999'
alias helpme='cht.sh --shell'
alias pacdiff='sudo -H DIFFPROG=meld pacdiff'


## a quick way to get out of current directory ##
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# Ping Website/Server
alias p5='ping -c 5'
alias p10='ping -c 10'
alias p15='ping -c 15'
alias fp="ping -c 100 -s.2"

#Command Will be found I think!
alias cl="clear"
alias ckear="clear"
alias clr="clear"

# Git commands
alias gs="git status"
alias gst="git status -sb"
alias gl="git log"
alias ga="git add"
alias gaa="git add -A"
alias gal="git add ."
alias gall="git add ."
alias gca="git commit -a"
alias gc="git commit -m"
alias gcot="git checkout"
alias gchekout="git checkout"
alias gchckout="git checkout"
alias gckout="git checkout"
alias go="git push -u origin"
alias gsh='git stash'
alias gw='git whatchanged'
alias gitlg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias nah="git clean -df && git checkout -- ."

# History commands
alias h="history"
alias h1="history 10"
alias h2="history 20"
alias h3="history 30"
alias hgrep='history | grep'

# Confirmation
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias rm='rm -I --preserve-root'

# Parenting changing perms on /
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

