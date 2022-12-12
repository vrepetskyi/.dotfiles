export ZSH=$HOME/.oh-my-zsh

export ZSH_THEME=spaceship

export EDITOR=nvim

export FZF_DEFAULT_COMMAND='fd -H --type f --color=never'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_ALT_C_COMMAND='fd -H --type d . --color=never'

source $ZSH/oh-my-zsh.sh

