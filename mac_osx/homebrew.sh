#!/bin/bash

function install_homebrew {
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
  brew upgrade
}

install_homebrew
