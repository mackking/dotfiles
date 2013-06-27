dotfiles
========

My collection of system [dotfiles](http://dotfiles.github.io/). Rather than forking from one of the masters ([@matiasbynens](https://github.com/mathiasbynens/dotfiles/), [@cowboy](https://github.com/cowboy/dotfiles), [@paulirish](https://github.com/paulirish/dotfiles), etc) I am just borrowing liberaly and remixing into my own setup as my needs are much simpler than theirs (for now at least...). I would suggest checking their repos out first before considering forking from here.


## Layout

  - **`init`**: scripts for initializing the `dotfile` repo contents into the system
  - **`bash`**: bash specific files.
    - contents `link` folder will be symlinked into `~`
    - contents of `source` folder will be sourced by sourced by other parts of the system (probalby `.bash_profile`)
  - **`apps`**: Application specific settings & config folders
  - **`bin`**: Collection of little scripts that aren't stricktly part of system setup but are still useful (to me)


## TODO

 - [ ] create update/sync script to link up repo with action ~ directory files.
    - symlink everything (?). 'root' files and `bash` folder directly; contents of `bin` folder on a file by file basis
 - [ ] incorporate `.osx` init/defaults script
 - [ ] what about Sublime prefs/settings? Here or elsewhere?
 - [ ] `.inputrc`

 - [ ] which technique? copy all; symlink some/all; require specific checkout location (~/.dotfiles) for easier reference in .bashrc and others?

 - [ ] add Homebrew and Cask init/install functionality

 - [ ] *refactor* to split platform specific setup (OSX vs *nix)

Brew: mathias && cowboy
init: cowboy

