# Mickael Salvas .zshrc

export CLICOLOR=1 # Makes ls command print directories in color

source ~/.zsh/plugins-config/pure-prompt.zsh
source ~/.zsh/plugins-config/syntax-highlight.zsh
source ~/.zsh/plugins-config/autocomplete.zsh
#source ~/.zsh/functions/*
#source ~/.zsh/aliases/*

export PATH="/usr/local/sbin:$PATH"
export NVM_DIR="$HOME/.nvm"                                               
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
    [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# ZSH history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

#bindkey '^[[A' history-search-backward
#bindkey '^[[B' history-search-forward

alias vi="nvim"

neofetch
