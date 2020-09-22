####### PATH #######


## VSCode code command
export PATH="/Applications/Code/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"


## system ruby user-gem path
export PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"

# MacPorts Installer addition on 2020-07-21_at_23:00:35: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

## homebrew
export PATH="$HOME/.brew/bin:$PATH"

## ~/.local/bin
export PATH="$HOME/.local/bin:$PATH"

## Add user gem path
export PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"

## ~/.scripts
export PATH="$HOME/.scripts:$PATH"

