# Pass DIR in from RC files
DIR="$1"

# If loading first bash clean tmp file
[[ $(ps ax | grep $$ | awk '{print $2}' | head -1) == s000 ]] && echo "Clearing temp aliases" && ([[ -d $DIR/backup ]] || mkdir -p $DIR/backup) && cp -L ~/.temp_aliases.sh $DIR/backup/ && : > "$DIR/.temp_aliases.sh" 

# Pass DIR to the aliases to reference itself in aliases
[[ ! -f "$DIR/.aliases.sh" ]] || . "$DIR/.aliases.sh" $DIRg
[[ ! -f "$DIR/.exports.sh" ]] || . "$DIR/.exports.sh" $DIR
[[ ! -f "$DIR/.temp_aliases.sh" ]] || . "$DIR/.temp_aliases.sh" $DIR
[[ ! -f "$DIR/.computer_aliases.sh" ]] || . "$DIR/.computer_aliases.sh" $DIR
