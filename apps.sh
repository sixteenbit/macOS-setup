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

# Install applications
brew cask install alfred
brew cask install atom
brew cask install blue-jeans-launcher
brew cask install droplr
brew cask install harvest
brew cask install iterm2
brew cask install sequel-pro
brew cask install sip
brew cask install slack
brew cask install transmit
brew cask install tower
brew cask install the-unarchiver
