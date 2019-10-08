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
npm install gulp-cli -g
npm install gulp -D
npm install -g sass
npm install -g sass-lint
brew install yarn

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
