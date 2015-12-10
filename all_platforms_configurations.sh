#!/bin/bash

function install_atom_packages {
  apm install travis-ci-status
  apm install merge-conflicts
  apm install minimap
  apm install file-icons
  apm install highlight-selected
}

install_atom_packages
