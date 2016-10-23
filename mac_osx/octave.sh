#!/bin/bash

function install_octave {
  brew install Caskroom/cask/aquaterm
  brew install gnuplot –with-x11 –with-aquaterm
  brew install octave –without-docs –without-gui –without-java
}

install_octave
