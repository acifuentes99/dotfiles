# Path to your oh-my-zsh installation.
export ZSH="$ZDOTDIR/ohmyzsh"
ZSH_THEME="robbyrussell"

export HISTSIZE=500000
export SAVEHIST=500000

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY_TIME
setopt EXTENDED_HISTORY

setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

plugins=(git)
source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/$HOME/Scripts/path"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
