##### default editor

export EDITOR=/usr/bin/nano
export VISUAL="$EDITOR"

##### ohmyzsh

source ~/.dotfiles/inc/zsh/ohmyzsh.zshrc



#### iTerm 2 Shell Integration ####
test -e ~/.iterm2_shell_integration.zsh && source ~/.iterm2_shell_integration.zsh || true



######### rbenv #########
## https://github.com/rbenv/rbenv

eval "$(rbenv init -)"



######### pyenv #########
## https://github.com/pyenv/pyenv
## Please make sure eval "$(pyenv init -)" is placed toward the end of the shell configuration file 
## since it manipulates PATH during the initialization.

export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"




######### direnv #########
## https://direnv.net/
## https://github.com/direnv/direnv

eval "$(direnv hook zsh)"


########## homebrew ##########

##### homebrew completions
# Bash completion has been installed to:
#   /Users/goofrider/.brew/etc/bash_completion.d
#
# zsh completions have been installed to:
#   /Users/goofrider/.brew/share/zsh/site-functions


#### z (via homebrew)
# see see https://github.com/rupa/z
#
# For Bash or Zsh, put something like this in your $HOME/.bashrc or $HOME/.zshrc:
  . /Users/goofrider/.brew/etc/profile.d/z.sh


#### automjump (via homebrew)
# see https://github.com/wting/autojump
#
# Add the following line to your ~/.bash_profile or ~/.zshrc file (and remember
# to source the file to update your current session):
  [ -f /Users/goofrider/.brew/etc/profile.d/autojump.sh ] && . /Users/goofrider/.brew/etc/profile.d/autojump.sh

# If you use the Fish shell then add the following line to your ~/.config/fish/config.fish:
#   [ -f /Users/goofrider/.brew/share/autojump/autojump.fish ]; and source /Users/goofrider/.brew/share/autojump/autojump.fish


  




