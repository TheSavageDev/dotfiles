export REACT_EDITOR=code
export EDITOR=code
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/zsh_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.4.0/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH
export ZSH="/Users/js063531/.oh-my-zsh"
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8

COMPLETION_WAITING_DOTS="true"

# Theme for ZSH
ZSH_THEME="spaceship"

# Plugins
plugins=(git history node npm brew osx z web-search yarn docker docker-compose docker-machine dotenv )

# Local non standard plugins
plugins+=(zsh-better-npm-completion)

# Source imports
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# You can put your aliases in here or important them like I do from a .aliases
source ~/.aliases

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
