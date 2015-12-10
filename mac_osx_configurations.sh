#!/bin/bash

function mac_osx_install_homebrew {
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
  brew upgrade
}

function mac_osx_install_ruby {
  brew install rbenv ruby-build
  # Add rbenv to bash so that it loads every time you open a terminal
  echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
  source ~/.bash_profile
  rbenv install 2.2.3
  rbenv global 2.2.3
}

function mac_osx_install_rails {
  echo "gem: --no-ri --no-rdoc" > ~/.gemrc
  gem install bundler
  gem install rails -v 4.2.4
  rbenv rehash
}

function ubuntu_install_postgres {
  brew install postgresql
}
