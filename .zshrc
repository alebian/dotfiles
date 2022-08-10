export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
  git
  thefuck
)

source $ZSH/oh-my-zsh.sh

export AWS_PROFILE=alebian

# Enable rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Enable pyenv
export PYENV_ROOT=/usr/local/opt/pyenv
eval "$(pyenv init -)"

# Enable jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval $(thefuck --alias)

alias be='bundle exec'
alias co='git checkout'
alias add='git add -A'
alias br='git branch'
function copyLastCmd() { fc -ln -1 | awk '{$1=$1}1' ORS='' | pbcopy }

# Map eject key in mac keyboard to F12
xmodmap -e "keycode 169 = 0xffc9"

# Allow Kubernetes autocompletion
if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi
