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
brew cask install atom
brew cask install alfred
brew cask install the-unarchiver
brew cask install sourcetree
brew cask install iterm2
brew cask install sip
brew cask install slack
brew cask install sequel-pro
brew cask install transmit
brew cask install zoomus
brew cask install microsoft-teams
brew cask install resilio-sync
brew cask install droplr
brew cask install sonos
brew cask install balenaetcher
brew cask install discord
