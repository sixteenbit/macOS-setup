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

# Install node.js
brew install node

# Remove outdated versions from the cellar.
brew cleanup

npm install -g grunt-cli
npm install -g grunt-init
npm install -g yo
npm install -g bower
npm install -g sass
npm install -g sass-lint

# Install PHP 71
brew tap homebrew/dupes
brew tap homebrew/php
brew install php70 --without-apache --with-fpm
brew services start homebrew/php/php70

# Install composer globally
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

# Install phpcs globally
git clone https://github.com/squizlabs/PHP_CodeSniffer.git phpcs
sudo ln -s ~/phpcs/bin/phpcs /usr/local/bin/phpcs
sudo ln -s ~/phpcs/bin/phpcbf /usr/local/bin/phpcbf
git clone -b master https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards.git wpcs
phpcs --config-set installed_paths ~/wpcs

# Install wp-cli globally
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

# Install applications
brew cask install atom
brew cask install droplr
brew cask install harvest
brew cask install iterm2
brew cask install private-internet-access
brew cask install resilio-sync
brew cask install sequel-pro
brew cask install sip
brew cask install sonos
brew cask install transmit
brew cask install tower
brew cask install the-unarchiver
brew cask install virtualbox
