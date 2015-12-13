#!/bin/bash

function install_rails {
  echo "gem: --no-ri --no-rdoc" > ~/.gemrc
  gem install bundler
  gem install rails -v 4.2.4
  rbenv rehash
}

install_rails
