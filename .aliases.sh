[[ "${BASH_SOURCE[0]}" != "${0}" ]] && echo "Aliases are being sourced" || echo "Script is a subshell"
DIR="$1"

########## History #########
HISTSIZE=9999
alias hist="history | grep "

########## Git ##########
alias gs="git status"
ga () {
find . -type d \( -path */node_modules -o -path directory2 \) -prune -false -o -type d -path "*/$1" | xargs git add
}
alias gl="git log"
alias brl="git branch -l"
alias wrk="git checkout"
alias gcb="git checkout -b"
alias syncsubmodules="git submodule update --recursive --remote"
alias initsubmodules="git submodule update --recursive --init"
alias originbranch="git rev-parse --abbrev-ref --symbolic-full-name @{u}"
safeoriginbranch () {
  git for-each-ref --format='%(upstream:short)' "$(git symbolic-ref -q HEAD)"
}
resethard () {
  git reset --hard $(safeoriginbranch)
}
alias gitaudit='git ls-files | while read f; do git blame --line-porcelain $f | grep '"'"'^author '"'"'; done | sort -f | uniq -ic | sort -n'
alias gitauditthis='git ls-files --directory $(pwd) | while read f; do git blame --line-porcelain $f | grep '"'"'^author '"'"'; done | sort -f | uniq -ic | sort -n'
alias lostandfound='git fsck --full --no-reflogs --unreachable --lost-found | grep commit | cut -d\  -f3 | xargs -n 1 git log -n 1 --pretty=oneline'
alias refcommits='git reflog | grep commit | cut -d\  -f1 | xargs -n 1 git log -n 1 --pretty=oneline'
alias gitcat='git cat-file -p'
alias gitdot='open https://github.com/LuminousLilies/Dot'


########## Bash ##########
alias sb=". $DIR/.aliases.sh $DIR"
alias codedot="code $DIR"
alias gotodot="cd $DIR"
alias eb="vim $DIR/.aliases.sh"
alias cb="cat $DIR/.aliases.sh"
alias ecb="vim $DIR/.computer_aliases.sh"
alias ccb="cat $DIR/.computer_aliases.sh"
alias etb="vim $DIR/.temp_aliases.sh"
alias ctb="cat $DIR/.temp_aliases.sh"
alias scb=". $DIR/.computer_aliases.sh $DIR"
alias stb=". $DIR/.temp_aliases.sh $DIR"
alias fixcommits="sh fix_commits.sh"
alias pushdot="cd $DIR; git add .; git commit -m \"Self Generated\"; fixcommits; git push origin master -f; cd -;"
alias sleepoff="caffeinate -disu &"
alias sleepon="ps | grep caffeinate | awk '{print $1}' | head -1 | xargs kill -9"
alias fb="cb | grep"
alias ftb="ctb | grep"
alias fcb="ccb | grep"

########## SSH ##########
alias deleteKeys="ssh-add -D"
alias addkeys="[[ -f ~/.ssh/id_ed25519 ]] && ssh-add ~/.ssh/id_ed25519 && [[ -f ~/.ssh/id_rsa ]] && ssh-add ~/.ssh/id_rsa"

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
cpy() {
  echo "Copying \"$1\" to clipboard...";
  $(cat "$1" | pbcopy); 
}
