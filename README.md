dotfiles
========

My collection of system [dotfiles](http://dotfiles.github.io/). These are very OSX flavoured, though could probably be used on other Bash based *nix without too much adjustment.

Rather than forking from one of the masters (see [Acknowledgements](#acknowledgements)) I am borrowing liberaly and remixing into my own setup as my needs are much simpler than theirs (for now at least...). I would suggest checking their repos out first before considering forking from here.

## Layout

  - **`init`**: scripts for initializing the `dotfile` repo contents into the system
  - **`bash`**: bash specific files.
    - contents of `link` folder will be symlinked into `~`
    - contents of `source` folder will be `source`d by other parts of the system (most notably `.bash_profile`)
  - **`apps`**: Application specific settings & config folders
  - **`bin`**: Collection of little scripts that aren't stricktly part of system setup but are still useful (to me). Added to `$PATH`

## Usage



## TODO

 - incorporate `.osx` init/defaults script [@ptb](https://github.com/ptb/Mac-OS-X-Lion-Setup)
 - what about Sublime prefs/settings? Here or elsewhere?
 - `.inputrc`
 - add Homebrew and Cask init/install functionality
 - implement consistent commenting style/scheme (in bash files at least)

## Acknowledgements

As stated above, much of what is going on here is borrowed from others. In rough order of *borrowdom*:
  [@matiasbynens](https://github.com/matiasbynens/dotfiles),
  [@cowboy](https://github.com/cowboy/dotfiles),
  [@paulmillr](https://github.com/paulmillr/dotfiles),
  [@necolas](https://github.com/necolas/dotfiles),
  [@ptb](https://github.com/ptb/Mac-OS-X-Lion-Setup),
  [@gf3](https://github.com/gf3/dotfiles),
  [@alrra](https://github.com/alrra/dotfiles)
