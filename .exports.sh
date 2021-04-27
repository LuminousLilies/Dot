[[ "${BASH_SOURCE[0]}" != "${0}" ]] && echo "Exports are being sourced" || echo "Script is a subshell"

export PATH="$PATH":~/bin

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

######### Virtual Envs #########
export WORKON_HOME=~/Envs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
. /usr/local/bin/virtualenvwrapper.sh
