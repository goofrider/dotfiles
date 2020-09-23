###### Antibody starts ######

source <(antibody init)

#### Configure Oh My Zsh with Antibody

# see base omz config: https://github.com/ohmyzsh/ohmyzsh/blob/master/templates/zshrc.zsh-template

# where is antibody keeping its stuff?
# ANTIBODY_HOME="$(antibody home)"

# set the theme to something, or blank if you use a non omz theme
ZSH_THEME=robbyrussell

# you can do plugins the omz way if you want... or load with antibody later
plugins=(
	git rbenv pyenv direnv docker gem pip npm #asdf
)

# tell omz where it lives
export ZSH="$(antibody home)"/https-COLON--SLASH--SLASH-github.com-SLASH-ohmyzsh-SLASH-ohmyzsh


# quit bugging me!
DISABLE_AUTO_UPDATE="true"

# omz!
antibody bundle ohmyzsh/ohmyzsh

# this is the antibody way of loading omz plugins if you don't use the plugins variable
# antibody bundle ohmyzsh/ohmyzsh path:plugins/colored-man-pages

### load .zsh_plugins.txt
# antibody bundle < ~/.zsh_plugins.txt


###### Antibody ends ######
