#!/bin/bash

function install_atom_packages {
  apm install travis-ci-status
  apm install linter
  apm install linter-rubocop
  apm install minimap
  apm install file-icons
  apm install highlight-selected
  apm install ruby-slim
  apm install rails-i18n-autocomplete
  apm install color-picker
  apm install multi-cursor
  apm install atom-prettify
  apm install rspec
  apm install goto-definition
  apm install language-elixir
  apm install language-rust
}

install_atom_packages
