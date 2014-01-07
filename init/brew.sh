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

# Needed to compile some older Ruby versions
brew install apple-gcc42

brew install ack
brew install git
brew install optipng
brew install tree
brew install imagemagick
brew install ghostscript
brew install rbenv ruby-build
brew install python
brew install autojump
brew install tidy --HEAD # HTML5 version
brew install postgres
brew install phplint
brew install composer

# Remove outdated versions from the cellar
brew cleanup

