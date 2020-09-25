# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	## Goodies
	frontend-search		# search packagaes online. Usage: frontend <context> <term> [<term>…] 
	urltools			# provides `urlencode` and `urldecode`
	# git-prompt		# installs zsh-git-prompt. Appears like so: (master↑3|✚1)

	## completion
	docker		# completion	
	thor		# completion
	rails		# completion and aliases r*
	bundler		# completion and aliases b*
				# Adds a wrapper for common gems:
				# 		Looks for a binstub under ./bin/ and executes it (if present)
				# 		Calls bundle exec <gem executable> otherwise
	# npx		# automatically registers npx command-not-found handler if npx exists in your $PATH
	
	# installed with Homebrew, may already have completions
	# git			# only provides short aliase
	# github		# completion for github gem and hub
	# git-flow		# completion and aliases g*
	# gem			# completion for gem subcommands and installed gems 
					# (NOT woroking, already working under Homebrew?)
	# pip			# completion
	# npm			# completion and aliases npm* (NOT WORKING)
	# yarn			# completion and aliases y*
	# heroku  		# completion
	
	## completion and prompt for version managers
	## using starship instead for prompt
	## completion seems to already working for homebrew installed packages
	# rbenv 		# prompt
	# pyenv			# shell init + prompt
	# jenv			# shell init + prompt
	# asdf			# init + completion
	# direnv		# only provides shell init
	# pipenv		# only provides short aliases
	
	## install shell helpers
	# autojump
	# z
)
