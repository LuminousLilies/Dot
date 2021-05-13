# Pass DIR in from RC files
DIR="$1"

# If loading first bash clean tmp file
[[ $(ps ax | grep $$ | awk '{print $2}' | head -1) == s000 ]] && echo "Clearing temp aliases" && ([[ -d $DIR/backup ]] || mkdir -p $DIR/backup) && cp -L ~/.temp_aliases.sh $DIR/backup/ && : > "$DIR/.temp_aliases.sh" 

# Pass DIR to the aliases to reference itself in aliases
[[ ! -f "$DIR/.aliases.sh" ]] || . "$DIR/.aliases.sh" $DIR
[[ ! -f "$DIR/.exports.sh" ]] || . "$DIR/.exports.sh" $DIR
[[ ! -f "$DIR/.temp_aliases.sh" ]] || . "$DIR/.temp_aliases.sh" $DIR
[[ ! -f "$DIR/.computer_aliases.sh" ]] || . "$DIR/.computer_aliases.sh" $DIR

########## Revert Tmp ##########
alias revertTmp="[[ -f $DIR/backup/.temp_aliases.sh ]] && cat $DIR/backup/.temp_aliases.sh > $DIR/.temp_aliases.sh"
 
########## Set-up SSH Agent ##########
[[ -z "${SSH_AGENT_PID}" ]] && eval "$(ssh-agent -s)" 
[[ ! $(ssh-add -l | cut -d" " -f4) == *ED25519* ]] && [[ -f ~/.ssh/id_ed25519 ]] && ssh-add -K ~/.ssh/id_ed25519 && echo "Adding ED25519 Key"
[[ ! $(ssh-add -l | cut -d" " -f4) == *RSA* ]] && [[ -f ~/.ssh/id_rsa ]] && ssh-add -K ~/.ssh/id_rsa && echo "Adding RSA Key"

########## Set-up git filter-repo ##########
export PATH="${HOME}/bin:${PATH}"
mkdir -p ~/bin
curl https://raw.githubusercontent.com/newren/git-filter-repo/main/git-filter-repo -o ~/bin/git-filter-repo 
chmod +x ~/bin/git-filter-repo