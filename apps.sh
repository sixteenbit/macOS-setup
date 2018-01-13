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
brew cask install blue-jeans-launcher
brew cask install droplr
brew cask install harvest
brew cask install slack
brew cask install resilio-sync
brew cask install the-unarchiver
