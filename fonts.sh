#!/usr/bin/env bash

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade -y

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2
brew install ttfautohint fontforge --with-python
brew tap caskroom/fonts

# Install fonts
brew cask install font-fira-code
brew cask install font-fira-mono
brew cask install font-fira-sans
# brew cask install font-fontawesome
brew cask install font-hack
brew cask install font-lato
brew cask install font-montserrat
brew cask install font-open-sans
brew cask install font-source-sans-pro
