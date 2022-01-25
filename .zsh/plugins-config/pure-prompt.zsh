# https://github.com/sindresorhus/pure

fpath+=~/.zsh/plugins-source/pure
autoload -U promptinit; promptinit
zstyle :prompt:pure:git:stash show yes
#PURE_PROMPT_SYMBOL=
PURE_PROMPT_SYMBOL="->"
prompt pure
