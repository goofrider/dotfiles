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




