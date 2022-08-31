autoload -U compinit
compinit
autoload -U promptinit
promptinit

export REACT_EDITOR='code --wait'
export EDITOR='code --wait'
export ZSH="/Users/jason.savage/.oh-my-zsh"
export DEVELOPMENT_DIR=$HOME/Development
export NODE_ENV=development
export NVM_DIR="$HOME/.nvm"
PATH="$PATH:/usr/local/bin"
export PATH="/usr/local/sbin:$PATH"

ZSH_THEME="spaceship"
plugins=(
  git
  history
  node
  osx
  docker
  docker-compose
  docker-machine
  dotenv
  bundler
  yarn
  npm
)

setopt correct
setopt auto_cd

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
## Load nvm bash completion
[ -s "$NVM_DIR/zsh_comple" ] && \. "$NVM_DIR/bash_completion"

load-nvmrc() {
    local node_version="$(nvm version)"
    local nvmrc_path="$(nvm_find_nvmrc)"

    if [ -n "$nvmrc_path" ]; then
        local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

        if [ "$nvmrc_node_version" = "N/A" ]; then
            nvm install
        elif [ "$nvmrc_node_version" != "$node_version" ]; then
            nvm use
        fi
    elif [ "$node_version" != "$(nvm version default)" ]; then
        echo "Reverting to nvm default version"
        nvm use default
    fi
}

autoload -U add-zsh-hook
add-zsh-hook chpwd load-nvmrc
load-nvmrc

source $ZSH/oh-my-zsh.sh
source ~/.spaceship
source ~/.aliases
source ~/.functions
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
