# Dotfiles README

## Tests

- tried homeshick, but it doesn't put back files

### Sheets

https://github.com/oscardelben/sheet

- very actively maintained

    gem install sheet

When writing your snippet, you can use this special format to automatically open a url when opening your sheet:
    
    url: http://example/com
    
You can open mulitple urls at once by specifying each url in a new line.

    url: https://github.com/oscardelben
    url: http://example.com


sheet will use either pbcopy or xclip to copy the content of a sheet to the clipboard, make sure you have one of those installed


sheet stores your sheets in text files in the ~/.sheets directory.

### cheats


https://github.com/lucaswerkmeister/cheats

#### Usage

    $ cheats dd
    dd 1
    Backup your primary drive
    dd if=/dev/sda of=$backup
    ------------------------------------------------
    dd 2
    Burn a disc image
    dd if=$file of=/dev/cdrom
    
    $ cheats dd 1
    Backup your primary drive
    dd if=/dev/sda of=$backup
    Backup file path> [prompt]
    [dd runs]

If the argument(s) match(es) exactly one cheat, then that cheat is run. Otherwise, all matching cheats are printed, and you can select one.

cheats was written for bash, and by now it contains so much bash-specific syntax that running it on other shells may require considerable porting efforts


### cheat (py)

https://github.com/chrisallenlane/cheat

Using pip

    sudo pip install cheat
    
Using homebrew

    brew install cheat

To see what cheatsheets are availble, run `cheat -l`.


Cheatsheets are stored in the ~/.cheat/ directory, and are named on a per-keyphrase basis. In other words, the content for the tar cheatsheet lives in the ~/.cheat/tar file.

Provided that you have an EDITOR environment variable set, you may edit cheatsheets with:

    cheat -e foo

#### Setting a DEFAULT_CHEAT_DIR

Personal cheatsheets are saved in the ~/.cheat directory by default, but you can specify a different default by exporting a DEFAULT_CHEAT_DIR environment variable:

    export DEFAULT_CHEAT_DIR=/path/to/my/cheats
    
You can additionally instruct cheat to look for cheatsheets in other directories by exporting a CHEATPATH environment variable:

    export CHEATPATH=/path/to/my/cheats
    
You may, of course, append multiple directories to your CHEATPATH:

    export CHEATPATH=$CHEATPATH:/path/to/more/cheats


### cheat (bash)

https://github.com/jahendrie/cheat

- very active


A Bash reimplementation of Chris Lane's cheat sheet script


[jahendrie/cheat](https://github.com/jahendrie/cheat): A bash-only implementation that additionally allows for cheatsheets to be created and grep searched from the command-line

    Options:
            -a or --add:        Add a text file to the cheat sheet directory
            -A:                 Add and compress (gzip) a text file
            -e or --edit:       Edit a cheat sheet, using editor in $EDITOR variable
            -k:                 Grep for keyword(s) in file names
            -g:                 Grep for keyword(s) inside file text
            -G:                 Same as above, but list full paths if found
            -l or --link:       Link a file instead of copying it to the cheat dir
            -L:                 List all cheat sheets with full paths
            -h or --help:       List the help
            --version:          List version and author info
            -u or --update:     Update cheat sheets (safe way)
            -U:                 Overwrite all cheat sheets with downloaded versions



#### Defining cheats

Cheats are placed in the ~/.cheats directory, with one file per cheat. Each cheat has the following format:

    One-line description
    The command itself, where $variables can be defined like $this
    variablename:Prompt
    # comment line
    other_variable:Prompt 2
    ...
    
Any variables that you declare from the third line on will be prompted from the user and placed into the command where necessary. (It's completely okay if the variable isn't in the command; this is useful for “Are you sure?“ type prompts where you don't care about the input, but want the user to press enter before taking action.) Any variables left in the command after the prompts are inserted are replaced by bash, if they are present (things like $PWD, $PS1 etc.). Comment lines are only allowed in the “prompts” section (beginning with the third line) and must start with a ‘#’ (no preceding whitespace is allowed).

### fresh



#### Ordering globbed directories

Using a glob to source multiple files from a single directory will read files in alphabetical order.
If you need to control the order in which files are sourced, you can create a `.fresh-order` file
in the directory being globbed containing an ordered list of files to read first.

#### Sourcing whole directories of files

Whole directories or repositories can be built and symlinked by including a trailing slash on the `--file` path:

``` sh
fresh mutt --file=~/.mutt/
fresh tpope/vim-pathogen . --file=~/.vim/bundle/vim-pathogen/ # whole repository
`

#### Building files without symlinking

Some tools/libraries (e.g. zsh plugins) require specific directory structures.
These can be built within the build directory (`~/.fresh/build`) by specifying
a relative path on `--file`:

``` sh
fresh zsh-users/zsh-syntax-highlighting zsh-syntax-highlighting.zsh --file=vendor/zsh-syntax-highlighting.zsh
fresh zsh-users/zsh-syntax-highlighting highlighters --file=vendor/highlighters/
```

These files can then be sourced from your main shell config with:

``` sh
source ~/.fresh/build/vendor/zsh-syntax-highlighting.zsh
```


### [Scripting your freshrc file](https://github.com/freshshell/fresh/wiki/Scripting-your-freshrc-file)


You can use all your usual shell programming constructs in your `.freshrc`
allowing you to do things like the below.

#### Conditionally include based on operating system or hostname

``` sh
if [[ "$(uname)" == "Darwin" ]]; then
  fresh systems/darwin.sh
fi
```

``` sh
if [[ "$(hostname -s)" == "myhost" ]]; then
  fresh systems/myhost.sh
fi
```

#### Merge in host specific configuration

e.g. You might want your git `user.name` and `user.email` to be set differently at work and at home.

``` sh
fresh-options --file=~/.gitconfig
  fresh git/gitconfig.$(hostname -s)
  fresh git/gitconfig
fresh-options
```

#### Use loops to generate multiple `fresh` lines

``` sh
for REPO in tpope/vim-{pathogen,liquid,rsi}; do
  fresh $REPO . --file=~/.vim/bundle/$(basename $REPO)/
done
```






## bashmarks

	Shell Commands

	    s <bookmark_name> - Saves the current directory as "bookmark_name"
	    g <bookmark_name> - Goes (cd) to the directory associated with "bookmark_name"
	    p <bookmark_name> - Prints the directory associated with "bookmark_name"
	    d <bookmark_name> - Deletes the bookmark
	    l                 - Lists all available bookmarks

All of your directory bookmarks are saved in a file called ".sdirs" in your HOME directory.

## z


Tracks your most used directories, based on 'frecency'.

	OPTIONS
	       -c     restrict matches to subdirectories of the current directory
	       -h     show a brief help message
	       -l     list only
	       -r     match by rank only
	       -t     match by recent access only
	       -x     remove the current directory from the datafile

	EXAMPLES
	       z foo         cd to most frecent dir matching foo
	       z foo bar     cd to most frecent dir matching foo and bar
	       z -r foo      cd to highest ranked dir matching foo
	       z -t foo      cd to most recently accessed dir matching foo
	       z -l foo      list all dirs matching foo (by frecency)



