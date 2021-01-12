# File for computer specific aliases(ignored by default)
[[ "${BASH_SOURCE[0]}" != "${0}" ]] && echo "Computer specific aliases are being sourced" || echo "Script is a subshell"

alias proj="cd ~/Projects"
alias publishwebsite='GIT_USER=LuminousLilies CURRENT_BRANCH=source USE_SSH=true npm run deploy'
alias jumpbox='ssh jumpbox'

########   Hosts   #########
alias n9='cd /etc; sudo git checkout n9; cd -'
alias w8='cd /etc; sudo git checkout w8; cd -'

########   Sites   #########
alias okta='open https://monkeys.okta.com/'
alias jira='open https://jira.surveymonkey.com/secure/Dashboard.jspa'
alias bns='open https://bonus.ly/bonuses'
alias treehouse='open https://treehouse.surveymonkey.com/dashboard.action'
alias jenkins='open http://n9qajkns403mgd1.n9.jungle.tech:8080/'
alias teamcity='open https://teamcity.corp.surveymonkey.com/project.html?projectId=smweb&branch_smweb_Release=__all_branches__'
alias mybb='open https://videocenter.corp.surveymonkey.com/videos/video/2421/'
alias greenhouse='open https://app.greenhouse.io/dashboard'
alias smtc='open https://teamcity.corp.surveymonkey.com/project.html?projectId=smweb&tab=projectOverview'
