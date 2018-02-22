ZSH=$HOME/.oh-my-zsh

ZSH_THEME="mz"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_CORRECTION="true"

plugins=(gitfast)

source $ZSH/oh-my-zsh.sh

alias ls='ls -G'
alias cw='calories -w'
alias ca='calories add'
alias ll='ls -lG'
alias gows='cd ~/go/src/github.com/zupzup'
alias bbws='cd ~/go/src/bitbucket.org/codefluegel'
alias b42ws='cd ~/go/src/git.block42.io/auko'
alias tmlr='cd ~/dev/work/timeular'
alias gotmlr='cd ~/go/src/gitlab.com/timeular'

export LSCOLORS="xxGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

# Use vim as the editor
export EDITOR=vi
# GNU Screen sets -o vi if EDITOR=vi, so we have to force it back.
set -o emacs

# Use C-x C-e to edit the current command line
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

export WORDCHARS='*?[]~&;!$%^<>'
export ACK_COLOR_MATCH='red'

export PATH="/usr/local/bin:$PATH"

export PATH=$PATH:/Users/mario/.rvm/gems/ruby-2.0.0-p247/bin:/Users/mario/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/mario/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/mario/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/mario/tools/mongo/bin:/Users/mario/tools/ngrok/:/Users/mario/go/bin:/usr/local/opt/go/libexec/bin
alias vim='/usr/local/bin/vim'
alias vi='/usr/local/bin/vim'
alias imgopt='/Applications/ImageOptim.app/Contents/MacOS/ImageOptim'
alias orange='/Users/mario/go/bin/orange'
export LC_CTYPE="en_US.UTF-8"

export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export GOPATH=/Users/mario/go
export GRADLE_OPTS=-Xmx1g
export GOROOT=/usr/local/Cellar/go/1.10/libexec/
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home
export NVM_DIR="/Users/mario/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "/Users/mario/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/mario/.sdkman/bin/sdkman-init.sh"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -g ""'
