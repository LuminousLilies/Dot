[[ "${BASH_SOURCE[0]}" != "${0}" ]] && echo "Aliases are being sourced" || echo "Script is a subshell"
DIR="$1"

########## Git ##########
alias gs="git status"
alias gl="git log"
alias wrk="git checkout"
alias gcb="git checkout -b"

########## Bash ##########
alias sb=". $DIR/.aliases.sh $DIR"
alias codedot="code $DIR"
alias gotodot="cd $DIR"
alias eb="vim $DIR/.aliases.sh"
alias cb="cat $DIR/.aliases.sh"
alias fb="cb | grep"
alias pushbash="cd $DIR; git add .; git commit -m \"Self Generated\"; git push; cd -;"

########## LS ##########
alias ls="ls -G"
alias cls="clear; ls"
alias clr="clear; ls -a"
alias cla="clr"

########## Navigation ##########
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'

########## Misc ##########
alias fc='ls | wc -l'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias mkpdir='mkdir -pv'
