# Install Homebrew
if ! [ -x "$(command -v brew)" ]; then
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install VirtualEnvWrapper
if [[ -z "${VIRTUALENVWRAPPER_SCRIPT}" ]] || ! [ -x $VIRTUALENVWRAPPER_SCRIPT ]; then
  echo "Installing VirtualEnvWrapper"
  brew install virtualenvwrapper
fi

# Install N
if ! [ -x "$(command -v n)" ]; then
  echo "Installing N"
  brew install virtualenvwrapper
fi

# Install Node/Npm
if ! [ -x "$(command -v node)" ]; then
  echo "Installing Node/Npm"
  sudo n latest
fi

# Install Python 3
if ! [ -x "$(command -v python3)" ]; then
  echo "Installing Python/Pip"
  brew install python
  brew install python3
  echo "Warning: In these settings python3 and pip3 are aliased to python and pip"
fi

# Install Docker
if ! [ -x "$(command -v docker)" ]; then
  echo "Installing Docker"
  brew install docker
  curl "https://desktop.docker.com/mac/main/amd64/Docker.dmg?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-mac-amd64" --output /tmp/docker.dmg
  open /tmp/docker.dmg &
fi

# Install VSCode
if ! [ -x "$(command -v code)" ]; then
  echo "Installing VSCode"
  curl "https://code.visualstudio.com/sha/download?build=stable&os=darwin-universal" --output vscode.zip
  # unzip and open this here
fi