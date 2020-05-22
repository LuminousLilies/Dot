# Pass DIR in from RC files
DIR="$1"

# Pass DIR to the aliases to reference itself in aliases
[[ ! -f "$DIR/.aliases.sh" ]] || . "$DIR/.aliases.sh" $DIR
[[ ! -f "$DIR/.exports.sh" ]] || . "$DIR/.exports.sh"
