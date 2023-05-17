## ~/.zshrc

### Debugging

DEBUG=0

_debug_log ()
{
	[[ $DEBUG -eq 1 ]] && echo "[DEBUG] `gdate +"%T.%3N"`: $1"
}




_debug_log "###### .zshrc begins ######"


##### default editor
export EDITOR=/usr/bin/nano
export VISUAL="$EDITOR"



##### My Homebrew settings

export HOMEBREW_NO_AUTO_UPDATE=1



##### ohmyzsh
## installed using git 

# _debug_log " "Setup Oh My Zsh"
#source ~/.dotfiles/inc/zsh/ohmyzsh.zsh

##### antibody
## installed using homebrew
## EOL. Switch to Antidote in the future 
## https://github.com/mattmc3/antidote

source <(antibody init)
antibody bundle < ~/.zsh_plugins.txt




########## Version Managers ##########



#### ============= direnv begins ==================


# Notes: using asdf + dirnev integration. asdf is invoked from direnv using .envrc
# Shims are not enabled by default to improve speed. See https://github.com/asdf-community/asdf-direnv
#
# rbenv and pyenv should remain installed but not activated,
# as asdf uses ruby-build and python-build to install ruby and python.
# 
# Alternatively direnv can manage ruby, python etc, by utilizing ruby-install, rbenv, pyenv, etc directly.


####### direnv (native) #######

# https://direnv.net/
# https://github.com/direnv/direnv

_debug_log "Setup direnv"

# #### init direnv
# eval "$(direnv hook zsh)"


### general direnv config

[ -x "$(command -v tmux)" ] && alias tmux='direnv exec / tmux'
    # This will make sure that direnv is unloaded before executing tmux,
    # and avoid issues with environment variables mangling in tmux's subshells.
    # See https://github.com/direnv/direnv/wiki/Tmux


#######  direnv ends #######




#######  asdf begins #######


_debug_log "Setup asdf"



#### asdf completions for zsh 
## https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
## see also https://github.com/ohmyzsh/ohmyzsh/pull/8837


# To make Homebrew’s completions available in zsh, you must insert the Homebrew-managed zsh/site-functions path 
# into your FPATH before initialising zsh’s completion facility. Add the following to your ~/.zshrc:
# 
# 	if type brew &>/dev/null
# 	then
# 	  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
#
# 	  autoload -Uz compinit
# 	  compinit
# 	fi
# 
# This must be done before compinit is called. Note that if you are using Oh My Zsh,
# it will call compinit for you when you source oh-my-zsh.sh. In this case, instead of the above,
# add the following line to your ~/.zshrc, before you source oh-my-zsh.sh:
#
# 	FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
# 	You may also need to forcibly rebuild zcompdump:
#
# rm -f ~/.zcompdump; compinit
# Additionally, if you receive “zsh compinit: insecure directories” warnings when attempting
# to load these completions, you may need to run this:
#
# 	chmod -R go-w "$(brew --prefix)/share"


#######  asdf ends #######




# ##### rbenv #####
# ## https://github.com/rbenv/rbenv
# _debug_log "Setup rbenv"
#
# eval "$(rbenv init -)"


##### pyenv #####
## https://github.com/pyenv/pyenv
# 
## Please make sure eval "$(pyenv init -)" is placed toward the end of the shell configuration file 
## since it manipulates PATH during the initialization.

# _debug_log "Setup pyenv"
# export PYENV_ROOT="$HOME/.pyenv"
# eval "$(pyenv init -)"
    

# #### nodenv #####
#
# _debug_log "Setup nodenv"
# eval "$(nodenv init -)"









########## manually installed tools ##########


#### iTerm 2 Shell Integration ####
_debug_log "Setup iTerm 2 integration"
test -e ~/.iterm2_shell_integration.zsh && source ~/.iterm2_shell_integration.zsh || true







########## Other homebrew packages ##########

#### byobu
_debug_log "Setup byobu"
export BYOBU_PREFIX=$(brew --prefix)


#### starship (cross-shell prompt)
## see https://github.com/starship/starship
_debug_log "Setup Starship"
eval "$(starship init zsh)"



#### z (via homebrew)
# see see https://github.com/rupa/z
# also available as ohmyzsh plugin
#
# For Bash or Zsh, put something like this in your $HOME/.bashrc or $HOME/.zshrc:

# # Loaded with Antibidy instead
# _debug_log "Setup z"
# . "$(brew --prefix)/etc/profile.d/z.sh"


#### automjump (via homebrew)
# see https://github.com/wting/autojump
# also available as ohmyzsh plugin

# Add the following line to your ~/.bash_profile or ~/.zshrc file (and remember
# to source the file to update your current session):

  _debug_log "Setup autojump"
  [ -f "$(brew --prefix)/etc/profile.d/autojump.sh" ] && . "$(brew --prefix)/etc/profile.d/autojump.sh"

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







###### ~/.zshrc ends #######

_debug_log "###### ~/.zshrc ends #######"

unset -f _debug_log
unset DEBUG









  




