## ~/.zshrc

### Debugging
# DEBUG=1

DATECMD="gdate"
debug_log ()
{
	[[ $DEBUG -eq 1 ]] && echo "[DEBUG] `$DATECMD +"%T.%3N"`: $1"
}




debug_log "###### .zshrc begins ######"


##### default editor
export EDITOR=/usr/bin/nano
export VISUAL="$EDITOR"



##### My Homebrew settings
BREWHOME="$(brew --prefix)"
export HOMEBREW_NO_AUTO_UPDATE=1



#### iTerm 2 Shell Integration ####
debug_log "Setup iTerm 2 integration"
test -e ~/.iterm2_shell_integration.zsh && source ~/.iterm2_shell_integration.zsh || true




########## Version Managers ##########

##### asdf #####

debug_log "Setup asdf"
# source $(brew --prefix asdf)/asdf.sh
source $BREWHOME/opt/asdf/asdf.sh



##### rbenv #####
## https://github.com/rbenv/rbenv
debug_log "Setup rbenv"
eval "$(rbenv init -)"


##### pyenv #####
## https://github.com/pyenv/pyenv
# 
## Please make sure eval "$(pyenv init -)" is placed toward the end of the shell configuration file 
## since it manipulates PATH during the initialization.
debug_log "Setup pyenv"
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"


##### direnv #####
## https://direnv.net/
## https://github.com/direnv/direnv
debug_log "Setup direnv"
eval "$(direnv hook zsh)"



##### jenv #####
## https://github.com/jenv/jenv
## jenv seens to be slow

# debug_log "Setup jenv"
# eval "$(jenv init -)"

# Use jenv add to inform jenv where your Java environment is located. 
#	jenv add $(/usr/libexec/java_home
#	jenv add .brew/opt/java
#
# And enable export plugin so JAVA_HOME is set correctly (run just once)
#   jenv enable-plugin export



##### nodenv #####
debug_log "Setup nodenv"
eval "$(nodenv init -)"




########## tools ##########

### s 
# https://github.com/davesque/s
#
# Clone the s repo into a directory
# Add the following somewhere in your .bashrc:
#   export S_BIN_PATH=<path to your script directory>
#   export PATH="<path to s repo directory>:$S_BIN_PATH:$PATH"


# debug_log "Setup s"
# export S_BIN_PATH="$HOME/.scripts"
# export PATH="$HOME/.fresh/source/davesque/s:$S_BIN_PATH:$PATH"




########## Other homebrew packages ##########

#### byobu
debug_log "Setup byobu"
export BYOBU_PREFIX=$BREWHOME


#### starship (cross-shell prompt)
## see https://github.com/starship/starship
debug_log "Setup Starship"
eval "$(starship init zsh)"



#### z (via homebrew)
# see see https://github.com/rupa/z
# also available as ohmyzsh plugin
#
# For Bash or Zsh, put something like this in your $HOME/.bashrc or $HOME/.zshrc:

debug_log "Setup z"
. "$BREWHOME/etc/profile.d/z.sh"


#### automjump (via homebrew)
# see https://github.com/wting/autojump
# also available as ohmyzsh plugin

# Add the following line to your ~/.bash_profile or ~/.zshrc file (and remember
# to source the file to update your current session):

  debug_log "Setup autojump"
  [ -f "$BREWHOME/etc/profile.d/autojump.sh" ] && . "$BREWHOME/etc/profile.d/autojump.sh"

# If you use the Fish shell then add the following line to your ~/.config/fish/config.fish:
#   [ -f /Users/goofrider/.brew/share/autojump/autojump.fish ]; and source /Users/goofrider/.brew/share/autojump/autojump.fish






### ZSH completion for Homebrew
# See https://docs.brew.sh/Shell-Completion
# NOT WOKRING
# heroku <TAB> grep: /Users/goofrider/Library/Caches/heroku/autocomplete/commands: No such file or directory
# completion seems to already working without this

# if type brew &>/dev/null; then
#   FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
#
#   autoload -Uz compinit
#   # compinit		# called by ohmyzsh
# fi



##### ohmyzsh
# debug_log "Setup Oh My Zsh"
#source ~/.dotfiles/inc/zsh/ohmyzsh.zsh

##### antibody
source ~/.dotfiles/inc/zsh/antibody.zsh





###### ~/.zshrc ends #######
debug_log "###### ~/.zshrc ends #######"
unset -f debug_log
unset DEBUG DATECMD









  




