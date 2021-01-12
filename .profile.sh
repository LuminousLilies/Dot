# Pass DIR in from RC files
DIR="$1"

# If loading first bash
[[ $(ps ax | grep $$ | awk '{print $2}' | head -1) == s000 ]] && mv "$DIR/.temp_aliases" "$DIR/.temp_aliases.bak" && rm "$DIR/.temp_aliases" && touch "$DIR/.temp_aliases"

# Pass DIR to the aliases to reference itself in aliases
[[ ! -f "$DIR/.aliases.sh" ]] || . "$DIR/.aliases.sh" $DIR
[[ ! -f "$DIR/.exports.sh" ]] || . "$DIR/.exports.sh" $DIR
[[ ! -f "$DIR/.temp_aliases.sh" ]] || . "$DIR/.temp_aliases.sh" $DIR
[[ ! -f "$DIR/.computer_aliases.sh" ]] || . "$DIR/.computer_aliases.sh" $DIR
