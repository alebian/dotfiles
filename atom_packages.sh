#!/bin/bash

function install_atom_packages {
  apm install travis-ci-status
  apm install merge-conflicts
  apm install minimap
  apm install file-icons
  apm install highlight-selected
  apm install ruby-slim
  apm install rubocop-auto-correct
  apm install rails-i18n-autocomplete
  apm install rails-partials
  apm install color-picker
  apm install multi-cursor
}

install_atom_packages
