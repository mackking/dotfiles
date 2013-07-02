#! /usr/bin/env bash

# ----------
# Mac s/w package installation via Homebrew (http://brew.sh/).
# To find more available packages checkout http://braumeister.org/
# ----------

source ~/.dotfiles/bash/init/util.sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing sudo time stamp if set, otherwise do nothing.
# (https://gist.github.com/3118588)
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# check for and install Homebrew if necesary

if [[ ! "$(type -P brew)" ]]; then
    e_header "Installing Homebrew..."
    true | /usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"
    e_success "Homebrew installed"
else
    #make sure brew is up to date
    brew update
fi

# make sure any pre-installed formulae are up to date
brew upgrade

# Packages to be installed view Homebrew

formulae=(coreutils findutils bash bash-completion tree git virtualhost.sh)
# future additions: mysql

e_header "Installing brew formulae..."

for formula in "${formulae[@]}"; do
    e_info "Installing $formula"
    brew install $formula
done
e_success "Formula install complete."

# Now setup Cask

e_header "Installing brew-cask..."

brew tap phinze/homebrew-cask
brew install brew-cask

e_success "Brew-cask installed"

# Packages to be installed via Cask (Homebrew for dmgs) (https://github.com/phinze/homebrew-cask)
#  - chrome, chrome canary, firefox, macvim, sublime text, transmission, virtualbox, vlc

casks=(google-chrome google-chrome-canary firefox macvim sublime-text the-unarchiver)

for cask in "${casks[@]}"; do
    e_info "Installing cask $cask"
    brew cask install $cask
done
e_success "Brew-cask install complete"


# finally, make sure everything is clean
brew cleanup

e_success "Homebrew and Cask initialization complete"