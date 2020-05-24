# File for computer specific aliases(ignored by default)
[[ "${BASH_SOURCE[0]}" != "${0}" ]] && echo "Computer specific aliases are being sourced" || echo "Script is a subshell"

alias proj="cd ~/Projects"
alias publishwebsite='GIT_USER=LuminousLilies CURRENT_BRANCH=source USE_SSH=true npm run deploy'
