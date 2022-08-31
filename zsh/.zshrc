# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -U compinit
compinit
autoload -U promptinit
promptinit

export REPORTTIME=10
export KEYTIMEOUT=1              # 10ms delay for key sequences
export REACT_EDITOR='code --wait'
export EDITOR='code --wait'
export ZSH="/Users/jason.savage/.oh-my-zsh"
export DEVELOPMENT_DIR=$HOME/Development
export C2FO_HOME=$DEVELOPMENT_DIR/c2fo
export NODE_ENV=development
export C2FO_AUTH_TOKEN="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwYXlsb2FkIjp7ImFwcGxpY2F0aW9uIjp7Im5hbWUiOiJDMkZPIEFwaSIsImtleSI6IjVmbzZrRWxnWDZDY3FhVjFxdW83QkkiLCJ1dWlkIjoiNjlmMTNlZWItMDRmMS00Mzc1LTk5OTItNmIzNjg2MjllOTU1IiwiYXBwbGljYXRpb25LZXlTZWNyZXRVdWlkIjoiMTE3ZmRkNDItZmM2Ni00Nzk5LWI3M2EtZjkxNTBhOGZlOGQ1IiwiZmVhdHVyZXMiOltdfSwidHlwZSI6ImFwcGxpY2F0aW9uX2F1dGgifSwiaWF0IjoxNjE4NjA5NDE4LCJleHAiOjE2MzQxNjE0MTgsImF1ZCI6WyIqIl0sImlzcyI6ImMyZm8tYXV0aCJ9.JZ5wQ-DIv3fWpm9UcVlGVhdkAWgaelYctVWwFFUVOtI"
export C2FO_APP_UUID="69f13eeb-04f1-4375-9992-6b368629e955"
export NVM_DIR="$HOME/.nvm"
PATH="$PATH:/usr/local/bin"
export PATH="/usr/local/sbin:$PATH"
export JIRA_PROJECT_OVERRIDE=C2FOT
export ATLASSIAN_API_PASSWORD=IrtksyXbdBeN3KCMDAbt1350
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/bin
export GPG_TTY=$(tty)
export DOCKER_HOST="unix:///Users/jason.savage/.colima/docker.sock"

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt EXTENDED_HISTORY          # write the history file in the ":start:elapsed;command" format.
setopt HIST_REDUCE_BLANKS        # remove superfluous blanks before recording entry.
setopt SHARE_HISTORY             # share history between all sessions.
setopt HIST_IGNORE_ALL_DUPS      # delete old recorded entry if new entry is a duplicate.

setopt COMPLETE_ALIASES

ZSH_THEME="spaceship"
plugins=(
  git
  history
  node
  macos
  docker
  docker-compose
  docker-machine
  dotenv
  bundler
  yarn
  npm
  zsh-autosuggestions
)

setopt correct
setopt auto_cd

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
source ~/.aliases
source ~/.functions
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

[ -s "/Users/jason.savage/.jabba/jabba.sh" ] && source "/Users/jason.savage/.jabba/jabba.sh"
eval "$(pyenv init -)"
eval "$(op completion zsh)"; compdef _op op
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jason.savage/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jason.savage/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jason.savage/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jason.savage/google-cloud-sdk/completion.zsh.inc'; fi
