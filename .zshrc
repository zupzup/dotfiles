ZSH=$HOME/.oh-my-zsh

ZSH_THEME="mz"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_CORRECTION="true"

plugins=(git)

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

export GRAILS_HOME=/Users/mario/dev/grailsversions/grails-2.2.2
export PATH=/Users/mario/dev/grailsversions/grails-2.2.2/bin:$PATH
export PATH=/Users/mario/bin/Sencha/Cmd/4.0.0.203:$PATH
export PATH=/Users/mario/tools/gradle-1.4/bin:$PATH

export SENCHA_CMD_3_0_0="/Users/mario/bin/Sencha/Cmd/4.0.0.203"

alias sblm='open -a "Sublime Text"'
alias canary='open -a Google\ Chrome\ Canary --args --disable-web-security'
export PATH="/usr/local/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export JAVA_TOOL_OPTIONS='-Djava.awt.headless=true'

# Customize to your needs...
export SCALA_HOME=/Users/mario/scala
export PATH=$PATH:/Users/mario/.rvm/gems/ruby-2.0.0-p247/bin:/Users/mario/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/mario/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/mario/.rvm/bin:/usr/local/bin:/Users/mario/bin/Sencha/Cmd/4.0.0.203:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/mario/tools/scala/bin
alias vim='/usr/local/bin/vim'
alias vi='/usr/local/bin/vim'
PLATFORM_HOME=/Users/mario/dev/netconomy/mmx/hybris/bin/platform
export ANT_HOME=$PLATFORM_HOME/apache-ant-1.8.2
chmod +x "$ANT_HOME/bin/ant"
export PATH=$ANT_HOME/bin:$PATH
export LC_CTYPE="en_US.UTF-8"
export SENCHA_CMD_3_0_0="/Users/mario/bin/Sencha/Cmd/3.1.2.342"

export PATH=/Users/mario/bin/Sencha/Cmd/3.1.2.342:$PATH
export PATH=/Users/mario/bin/Sencha/Cmd/4.0.2.67:$PATH
export ANDROID_HOME=/usr/local/opt/android-sdk
export ANT_OPTS="-Xms512M -Xmx1024M -XX:MaxPermSize=250M"
export PATH=$PATH:/Users/mario/tools/play-2.0
export GOPATH=/Users/mario/go

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/mario/.gvm/bin/gvm-init.sh" ]] && source "/Users/mario/.gvm/bin/gvm-init.sh"
