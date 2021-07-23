SOURCE="$( basename "${BASH_SOURCE[0]}" ).zshrc"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

[[ ! -f "$DIR/.profile.sh" ]] || . "$DIR/.profile.sh" $DIR

### Ctrl Arrow Enabled
bindkey -e
bindkey '\e\e[C' forward-word
bindkey '\e\e[D' backward-word 
