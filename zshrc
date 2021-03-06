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



########## Version Managers ##########



#### ============= asdf / direnv begins ==================


# Notes: using asdf + dirnev integration. asdf is invoked from direnv using .envrc
# Shims are not enabled by default to improve speed. See https://github.com/asdf-community/asdf-direnv
#
# rbenv and pyenv should remain installed but not activated,
# as asdf uses ruby-build and python-build to install ruby and python.
# 
# Alternatively direnv can manage ruby, python etc, by utilizing ruby-install, rbenv, pyenv, etc directly.


####### direnv (native) ########
# https://direnv.net/
# https://github.com/direnv/direnv

_debug_log "Setup direnv"
#### init direnv
eval "$(direnv hook zsh)"



######### asdf (native) #########
##
## not using it anymore as it's shims doesn't work with system/homebrew python/ruby
# _debug_log "Setup asdf"
#
# ### Init asdf
# source $(brew --prefix asdf)/asdf.sh


# ######### asdf + direnv integrated #########
# _debug_log " "Setup direnv+asdf"
#
# ### Using asdf+direnv For better performance
# ### Init asdf but bypassing shims. with direnv integration.
# ### see https://github.com/asdf-community/asdf-direnv
#
# ## Dont source `~/.asdf/asdf.sh`
# #PATH="$PATH:~/.asdf/bin"					# NOT needed for Homebrew installed asdf
# source "$(brew --prefix)/opt/asdf/lib/asdf.sh" 	# just load the asdf wrapper function
#
# #### init direnv via asdf
# #### See https://github.com/asdf-community/asdf-direnv
# ## needs to specify direnv version in global .tool-versions to work
# ## or set it in an  envar
# eval "$(asdf exec direnv hook zsh)"
# direnv() { asdf exec direnv "$@"; }
#
# ## alt init direnv+asdf
# # eval "$(env ASDF_DIRENV_VERSION=2.20.0 asdf direnv hook bash)"
# # direnv() { env ASDF_DIRENV_VERSION=2.20.0 asdf direnv "$@"; }


##	When using asdf via direnv, not only .tool-versions is needed in project directory
##	But also .envrc, as asdf is invoked by direnv rather than natively.
##
##	Once hooked into your shell, direnv will expect to find a .envrc file 
##	whenever you need to change tool versions.
##	In your project directory, create an .envrc file like this:
##	# File: /your/project/.envrc
##	 	use asdf



### general direnv config

[ -x "$(command -v tmux)" ] && alias tmux='direnv exec / tmux'
    # This will make sure that direnv is unloaded before executing tmux,
    # and avoid issues with environment variables mangling in tmux's subshells.
    # See https://github.com/direnv/direnv/wiki/Tmux


#### ============= asdf / direnv ends ==================




##### rbenv #####
## https://github.com/rbenv/rbenv
_debug_log "Setup rbenv"
eval "$(rbenv init -)"


##### pyenv #####
## https://github.com/pyenv/pyenv
# 
## Please make sure eval "$(pyenv init -)" is placed toward the end of the shell configuration file 
## since it manipulates PATH during the initialization.
_debug_log "Setup pyenv"
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"
    

#### nodenv #####
_debug_log "Setup nodenv"
eval "$(nodenv init -)"









########## manually installed tools ##########


#### iTerm 2 Shell Integration ####
_debug_log "Setup iTerm 2 integration"
test -e ~/.iterm2_shell_integration.zsh && source ~/.iterm2_shell_integration.zsh || true



### s 
## https://github.com/davesque/s
## Add the following somewhere in your .bashrc:
##   export S_BIN_PATH=<path to your script directory>
##   export PATH="<path to s repo directory>:$S_BIN_PATH:$PATH"

# _debug_log " "Setup s"
# export S_BIN_PATH="$HOME/.scripts"
# export PATH="$HOME/.fresh/source/davesque/s:$S_BIN_PATH:$PATH"




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



##### ohmyzsh
# _debug_log " "Setup Oh My Zsh"
#source ~/.dotfiles/inc/zsh/ohmyzsh.zsh

##### antibody
source ~/.dotfiles/inc/zsh/antibody.zsh





###### ~/.zshrc ends #######
_debug_log "###### ~/.zshrc ends #######"

unset -f _debug_log
unset DEBUG









  




