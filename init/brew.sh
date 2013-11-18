#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Tap dupes repo
brew tap homebrew/dupes

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install wget with IRI support
brew install wget --enable-iri

# Composer
brew tap josegonzalez/homebrew-php
brew install josegonzalez/php/composer

brew install ack
brew install git
brew install optipng
brew install tree
brew install imagemagick
brew install ghostscript
brew install rbenv ruby-build
brew install python

# Needed to compile some older Ruby versions
brew install apple-gcc42

# Remove outdated versions from the cellar
brew cleanup
