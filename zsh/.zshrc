export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME=spaceship
export EDITOR=nvim

plugins=(zsh-vi-mode fzf)

zvm_after_init() {
  source /usr/share/fzf/key-bindings.zsh
  source /usr/share/fzf/completion.zsh
}

zvm_after_lazy_keybindings() {
  bindkey '^[j' down-line-or-history
  bindkey '^[k' up-line-or-history
}

source $ZSH/oh-my-zsh.sh

unalias 1
unalias 2
unalias 3
unalias 4
unalias 5
unalias 6
unalias 7
unalias 8
unalias 9
unalias egrep
unalias fgrep
unalias grep
unalias l
unalias lsa
unalias run-help
unalias which-command

alias ls='exa --group-directories-first'
alias la='ls -a'
alias ll='la -l'
alias please=sudo

export FZF_DEFAULT_COMMAND='fd -HI'
export FZF_DEFAULT_OPTS='--bind alt-k:up,alt-j:down,alt-K:preview-up,alt-J:preview-down'
export FZF_CTRL_T_COMMAND='fd -H --type f --type l'
export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers {}'"
export FZF_LAT_C_COMMAND='fd -H --type d --type l'
export FZF_ALT_C_OPTS="--preview 'la {}'"

mdcd() {
  md $1
  cd $1
}
