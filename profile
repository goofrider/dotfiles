###### Debian default section ######

# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


###### end Debian default section ######


## VSCode code command on Mac OS

if [ -d "/Applications/Code/Visual Studio Code.app" ] ; then
	export PATH="/Applications/Code/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
fi




###### PATH ######


## system ruby user-gem path
if [ -x /usr/bin/ruby ] ; then
	export PATH="$(/usr/bin/ruby -e 'puts Gem.user_dir')/bin:$PATH"
fi


## Macports
if [ -d /opt/local/bin ] && [ -d /opt/local/sbin ] ; then
	# MacPorts Installer addition on 2020-07-21_at_23:00:35: adding an appropriate PATH variable for use with MacPorts.
	export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
	# Finished adapting your PATH environment variable for use with MacPorts.
fi


## homebrew
if [ -d "$HOME/.brew/bin" ] && [ -d "$HOME/.brew/sbin" ] ; then
	export PATH="$HOME/.brew/bin:$HOME/.brew/sbin:$PATH"
fi



## ~/.scripts
if [ -d "$HOME/.scripts" ] ; then
	export PATH="$HOME/.scripts:$PATH"
fi



