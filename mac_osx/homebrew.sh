#!/bin/bash

function install_homebrew {
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
  brew upgrade
}

function install_packages {
  brew install zsh
  brew install gcc
  brew install rbenv
  brew install pyenv
  brew install jenv
  brew install nodenv
  brew install erlang
  brew install elixir
  brew install git
  brew install imagemagick
  brew install nasm
  brew install nginx
  brew install openssl
  brew install postgresql
  brew install qemu
  brew install redis
  brew install rust
  brew install vim
  brew install wget
  brew install wireshark
  brew install exenv
  git clone git://github.com/mururu/elixir-build.git ~/.exenv/plugins/elixir-build
}

install_homebrew
install_packages
