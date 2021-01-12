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
mkdir -p "$DIR/backup"
rm -rf "$DIR/backup/*"
cp -L .temp_aliases.sh "$DIR/backup/.temp_aliases.sh.bak"
rm .temp_aliases.sh
cp -L .computer_aliases.sh "$DIR/backup/.computer_aliases.sh.bak"
rm .computer_aliases.sh
cp -L .aliases.sh "$DIR/backup/.aliases.sh.bak"
rm .aliases.sh
cp -L .bashrc "$DIR/backup/.bashrc.bak"
rm .bashrc
cp -L .exports.sh "$DIR/backup/.exports.sh.bak"
rm .exports.sh
cp -L .profile.sh "$DIR/backup/.profile.sh.bak"
rm .profile.sh
cp -L .zshrc "$DIR/backup/.zshrc.bak"
rm .zshrc

# Set-up untracked files
cp "$DIR/.temp_aliases.sh.example" "$DIR/.temp_aliases.sh"
cp "$DIR/.computer_aliases.sh.example" "$DIR/.computer_aliases.sh"

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
