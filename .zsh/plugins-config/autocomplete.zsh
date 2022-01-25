# https://github.com/marlonrichert/zsh-autocomplete

zstyle ':autocomplete:*' default-context ''
zstyle ':autocomplete:*' min-delay 0.0
zstyle ':autocomplete:*' min-input 1
zstyle ':autocomplete:*' ignored-input ''
zstyle ':autocomplete:*' list-lines 16
zstyle ':autocomplete:history-search:*' list-lines 16
zstyle ':autocomplete:history-incremental-search-*:*' list-lines 16
zstyle ':autocomplete:*' recent-dirs cdr
zstyle ':autocomplete:*' insert-unambiguous no
zstyle ':autocomplete:*' widget-style complete-word
zstyle ':autocomplete:*' fzf-completion no

zstyle ':autocomplete:*' add-space \
    executables aliases functions builtins reserved-words commands

source ~/.zsh/plugins-source/zsh-autocomplete/zsh-autocomplete.plugin.zsh

bindkey '\e[A' up-line-or-search
bindkey '\eOA' up-line-or-search
bindkey '\e[B' down-line-or-select
bindkey '\eOB' down-line-or-select
bindkey '\0' list-expand
bindkey -M menuselect '\r' .accept-line
