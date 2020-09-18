###### Antigen starts ######

# source ~/.antigen.zsh
source "$HOME/.brew/share/antigen/antigen.zsh"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# # Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
# antigen bundle heroku
# antigen bundle pip
# antigen bundle lein
# antigen bundle command-not-found
#
# # Syntax highlighting bundle.
# antigen bundle zsh-users/zsh-syntax-highlighting
#
# Load the theme.
antigen theme robbyrussell


# ### zshmarks via Antigen
# # A port of Bashmarks (by Todd Werth), a simple command line bookmarking plugin, for oh-my-zsh
# # https://github.com/jocelynmallon/zshmarks
# antigen bundle jocelynmallon/zshmarks


# Tell Antigen that you're done.
antigen apply

###### Antigen ends ######