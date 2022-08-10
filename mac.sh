#!/bin/bash

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install brew packages
brew install zsh
brew install wget
brew install docker
brew install heroku
brew install thefuck
brew install openssl
brew install yarn
brew install poppler
brew install alfred
brew install rectangle
brew install visual-studio-code
brew install slack
brew install insomnia
brew install app-cleaner
brew install itsycal
brew install stats

# Install ruby
brew install rbenv
brew install ruby-build
OPENSSL_CFLAGS=-Wno-error=implicit-function-declaration rbenv install 2.7.6
OPENSSL_CFLAGS=-Wno-error=implicit-function-declaration rbenv install 3.1.2
rbenv global 2.7.6
rbenv rehash

# Install Python
brew install pyenv
pyenv install 2.7.18
pyenv install 3.10.4
pyenv global 3.10.4
pyenv rehash

# Install Java
brew install jenv
brew install openjdk@8
brew install openjdk@11
brew install openjdk@17
jenv add /usr/local/Cellar/openjdk@8/1.8.0+322/
jenv add /usr/local/Cellar/openjdk@11/11.0.15
jenv add /usr/local/Cellar/openjdk@17/17.0.3
jenv global 17.0.3
jenv rehash

# Install Node
brew install nvm
nvm install 14.17.3
nvm install 18.6.0
nvm alias default 14

brew install libpq
# Install pg gem -> gem install pg -v '1.4.2' -- --with-pg-config=/usr/local/Cellar/libpq/14.4/bin/pg_config

brew install sqlite
brew install imagemagick
brew install tesseract
brew install wireshark

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Install AWS
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /
which aws
rm AWSCLIV2.pkg
