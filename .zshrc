export ZSH="/Users/mario/.oh-my-zsh"
ZSH_THEME="mz"

CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_CORRECTION="true"

plugins=(gitfast)

export LANG=en_US.UTF-8
source $ZSH/oh-my-zsh.sh

alias ls='ls -G'
alias cw='calories -w'
alias ca='calories add'
alias ll='ls -lG'
alias gows='cd ~/go/src/github.com/zupzup'
alias rst='cd ~/dev/oss/rust/'
alias tmlr='cd ~/dev/work/timeular'
alias gotmlr='cd ~/go/src/gitlab.com/timeular'
alias git='LANG=en_US git'
alias tma='tmux attach -t'
alias java8='export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home'
alias cr='cargo run'
alias ct='cargo test'
alias cck='cargo check'

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

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

export PATH=$PATH:/Users/mario/.rvm/gems/ruby-2.0.0-p247/bin:/Users/mario/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/mario/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/mario/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/mario/tools/bin:/Users/mario/tools/ngrok/:/Users/mario/go/bin:/usr/local/opt/go/libexec/bin
alias vim='/usr/local/bin/vim'
alias vi='/usr/local/bin/vim'
alias imgopt='/Applications/ImageOptim.app/Contents/MacOS/ImageOptim'
alias orange='/Users/mario/go/bin/orange'
alias clp='cargo clippy --all-targets --all-features -- -D warnings'
export LC_CTYPE="en_US.UTF-8"
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/Cellar/libffi/3.2.1/lib/pkgconfig

export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH="$HOME/.cargo/bin:$PATH"
export GOPATH=/Users/mario/go
export GRADLE_OPTS=-Xmx1g
export GOROOT=/usr/local/Cellar/go/1.13.4/libexec/
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.jdk/Contents/Home
export RUST_SRC_PATH=/Users/mario/.rustup/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src
export NVM_DIR="/Users/mario/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -g ""'
