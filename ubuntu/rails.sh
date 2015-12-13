#!/bin/bash

function install_rails {
  echo "gem: --no-ri --no-rdoc" > ~/.gemrc
  gem install bundler
  sudo add-apt-repository ppa:chris-lea/node.js
  sudo apt-get update
  sudo apt-get install nodejs
  gem install rails -v 4.2.4
  rbenv rehash
}

install_rails
