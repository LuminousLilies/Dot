[[ "${BASH_SOURCE[0]}" != "${0}" ]] && echo "Aliases are being sourced" || echo "Script is a subshell"
DIR="$1"

########## History #########
HISTSIZE=9999
alias hist="history | grep "

########## Git ##########
alias gs="git status"
alias gl="git log"
alias wrk="git checkout"
alias gcb="git checkout -b"
alias syncsubmodules="git submodule update --recursive --remote"
alias initsubmodules="git submodule update --recursive --init"
alias originbranch="git rev-parse --abbrev-ref --symbolic-full-name @{u}"
safeoriginbranch () {
  git for-each-ref --format='%(upstream:short)' "$(git symbolic-ref -q HEAD)"
}
alias resethard="git reset --hard $(safeoriginbranch)"
alias gitaudit='git ls-files | while read f; do git blame --line-porcelain $f | grep '"'"'^author '"'"'; done | sort -f | uniq -ic | sort -n'
alias gitauditthis='git ls-files --directory $(pwd) | while read f; do git blame --line-porcelain $f | grep '"'"'^author '"'"'; done | sort -f | uniq -ic | sort -n'



########## Bash ##########
alias sb=". $DIR/.aliases.sh $DIR"
alias codedot="code $DIR"
alias gotodot="cd $DIR"
alias eb="vim $DIR/.aliases.sh"
alias cb="cat $DIR/.aliases.sh"
alias fb="cb | grep"
alias ecb="vim $DIR/.computer_aliases.sh"
alias ccb="cat $DIR/.computer_aliases.sh"
alias etb="vim $DIR/.temp_aliases.sh"
alias ctb="cat $DIR/.temp_aliases.sh"
alias scb=". $DIR/.computer_aliases.sh $DIR"
alias stb=". $DIR/.temp_aliases.sh $DIR"
alias pushdot="cd $DIR; git add .; git commit -m \"Self Generated\"; git push; cd -;"

########## LS ##########
alias ls="ls -G"
alias cls="clear; ls"
alias clr="clear; ls -a"
alias cla="clr"

########## Navigation ##########
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ~='cd ~'

########## Misc ##########
alias fc='ls | wc -l'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias mkpdir='mkdir -pv'
alias mkpdir='mkdir -pv'
