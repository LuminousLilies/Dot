# Get script directory
SOURCE="$( basename "${BASH_SOURCE[0]}" ).zshrc"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

# Go to Home
cd ~; 

# Backup all existing dot files
mv .aliases.sh .aliases.sh.bak
mv .bashrc .bashrc.bak
mv .computer_aliases.sh .computer_aliases.sh.bak
mv .exports.sh .exports.sh.bak
mv .profile.sh .profile.sh.bak
mv .temp_aliases.sh .temp_aliases.sh.bak
mv .zshrc .zshrc.bak

# Create new Sym Links
ln -s "$DIR/.aliases.sh" .aliases.sh
ln -s "$DIR/.bashrc" .bashrc
ln -s "$DIR/.computer_aliases.sh" .computer_aliases.sh
ln -s "$DIR/.exports.sh" .exports.sh
ln -s "$DIR/.profile.sh" .profile.sh
ln -s "$DIR/.temp_aliases.sh" .temp_aliases.sh
ln -s "$DIR/.zshrc" .zshrc

# return to current directory
cd -
