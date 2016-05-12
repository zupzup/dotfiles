ZSH=$HOME/.oh-my-zsh

ZSH_THEME="mz"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_CORRECTION="true"

plugins=(gitfast)

source $ZSH/oh-my-zsh.sh

alias ls='ls -G'
alias ll='ls -lG'

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

function mcd() { mkdir -p $1 && cd $1 }
function cdf() { cd *$1*/ } 
function up()
{
    local DIR=$PWD
    local TARGET=$1
    while [ ! -e $DIR/$TARGET -a $DIR != "/" ]; do
        DIR=$(dirname $DIR)
    done
    test $DIR != "/" && echo $DIR/$TARGET
}

export PATH=/Users/mario/bin/Sencha/Cmd/4.0.0.203:$PATH

alias canary='open -a Google\ Chrome\ Canary --args --disable-web-security'
export PATH="/usr/local/bin:$PATH"

export JAVA_TOOL_OPTIONS='-Djava.awt.headless=true'

export PATH=$PATH:/Users/mario/.rvm/gems/ruby-2.0.0-p247/bin:/Users/mario/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/mario/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/mario/.rvm/bin:/usr/local/bin:/Users/mario/bin/Sencha/Cmd/4.0.0.203:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/mario/tools/scala/bin:/Users/mario/tools/lein:/Users/mario/tools/mongo/bin:/Users/mario/tools/ngrok/
alias vim='/usr/local/bin/vim'
alias vi='/usr/local/bin/vim'
alias java7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7) && echo ENV SET TO JAVA 7 $JAVA_HOME'
export LC_CTYPE="en_US.UTF-8"

export ANDROID_HOME=/usr/local/opt/android-sdk
export GOPATH=/Users/mario/go
export NVM_DIR="/Users/mario/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "/Users/mario/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/mario/.sdkman/bin/sdkman-init.sh"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

# The next line updates PATH for the Google Cloud SDK.
source '/Users/mario/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/mario/google-cloud-sdk/completion.zsh.inc'
