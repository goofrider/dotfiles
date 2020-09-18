####### PATH #######

## system ruby user-gem path
export PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"

# MacPorts Installer addition on 2020-07-21_at_23:00:35: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

## homebrew
export PATH="$HOME/.brew/bin:$PATH"

## ~/.local/bin
export PATH="$HOME/.local/bin:$PATH"

