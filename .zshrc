CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_CORRECTION="true"


export LANG=en_US.UTF-8

alias tig='gitui'
alias ll='exa -al'
alias l='exa -al'
alias orange='grup'
alias ct='bat'
alias gows='cd ~/go/src/github.com/zupzup'
alias git='LANG=en_US git'
alias tma='tmux attach -t'
alias phil="cd ~/Tresorit/mario\'s\ tresor/uni/Philosophie"
alias uni="cd ~/Tresorit/mario\'s\ tresor/uni"
alias clp='cargo clippy --all-targets --all-features -- -D warnings'
alias imgopt='/Applications/ImageOptim.app/Contents/MacOS/ImageOptim'
alias vim='/opt/homebrew/bin/nvim'
alias vi='/opt/homebrew/bin/nvim'
alias cr='cargo run'
alias cck='cargo check --all-targets'
alias clp='cargo clippy --all-targets --all-features -- -D warnings'
alias wrt="cd ~/Tresorit/mario\'s\ tresor/writing"
alias ncod="cd onedrivenc/OneDrive\ -\ Netconomy\ GmbH"
alias start-ubuntu="~/tools/vftool/build/vftool -k ~/netconomy/ubuntu-vm/kernel -i ~/netconomy/ubuntu-vm/initrd -d ~/netconomy/ubuntu-vm/disk.img -m 4096 -a \"root=/dev/vda console=hvc0\" -t 0"
alias rst='cd ~/netconomy/rust'

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

export GREP_OPTIONS="--color"

export HISTSIZE=1000000
export HISTFILESIZE=2000000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
export DOCKER_HOST=ssh://mzupan@ubuntu

export EDITOR=vi
set -o emacs

# Use C-x C-e to edit the current command line
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

export WORDCHARS='*?[]~&;!$%^<>'
export ACK_COLOR_MATCH='red'

export PATH="/usr/local/bin:$PATH"
export PATH=$PATH:$(brew --prefix)/opt/python/libexec/bin

export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/mzupan/tools/bin:/Users/mzupan/go/bin:/usr/local/opt/go/libexec/bin:/Users/mzupan/tools/docker
export LC_CTYPE="en_US.UTF-8"
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/Cellar/libffi/3.2.1/lib/pkgconfig

export PATH="$HOME/.cargo/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -g ""'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# eval "$(starship init zsh)"
export PATH="/opt/homebrew/opt/libressl/bin:$PATH"
eval "$(starship init zsh)"
