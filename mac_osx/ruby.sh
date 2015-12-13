#!/bin/bash

function install_ruby {
  brew install rbenv ruby-build
  # Add rbenv to bash so that it loads every time you open a terminal
  echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
  source ~/.bash_profile
  rbenv install 2.2.3
  rbenv global 2.2.3
}

install_ruby
