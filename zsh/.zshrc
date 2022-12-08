# vim: set ft=zsh:
export ZSH="/home/acifuentes/.oh-my-zsh"
ZSH_THEME="jispwoso-mod"
#plugins=(zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
export PATH="$PATH:$HOME/utility/path"
export PAGER='most'

# alias configuration
alias cddot="cd ~/Documents/dotfiles"
alias cdscripts="cd ~/rice/scripts"
alias cdnotes="cd ~/Documents/notes"
alias cdconfig="cd ~/.config"
alias cdohmyzsh="cd ~/.ohmyzsh"

alias cdalacritty="cd ~/Documents/dotfiles/alacritty"
alias cdawesome="cd ~/Documents/dotfiles/awesome"
alias cdrofi="cd ~/Documents/dotfiles/rofi"
alias cdtmux="cd ~/Documents/dotfiles/tmux"
alias cdvimrc="cd ~/Documents/dotfiles/vimrc"
alias cdzsh="cd ~/Documents/dotfiles/zsh"

alias vialacritty="cd ~/Documents/dotfiles/alacritty && nvim default"
alias viawesome="cd ~/Documents/dotfiles/awesome && nvim"
alias virofi="cd ~/Documents/dotfiles/rofi && nvim default"
alias vitmux="cd ~/Documents/dotfiles/tmux && nvim default"
alias vivimrc="cd ~/Documents/dotfiles/vimrc && nvim"
alias vizsh="cd ~/Documents/dotfiles/zsh && nvim default"

alias cswap="rm /opt/vim/swapfiles/*"

n ()
{
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

#Make Ranger CD on quit in current shell
alias ranger='. ranger'

# Better zsh history
# the detailed meaning of the below three variable can be found in `man zshparam`.
#export HISTFILE=~/.histfile
export HISTSIZE=1000000   # the number of items for the internal history list
export SAVEHIST=1000000   # maximum number of items for the history file

# The meaning of these options can be found in man page of `zshoptions`.
setopt HIST_IGNORE_ALL_DUPS  # do not put duplicated command into history list
setopt HIST_SAVE_NO_DUPS  # do not save duplicated command
setopt HIST_REDUCE_BLANKS  # remove unnecessary blanks
setopt INC_APPEND_HISTORY_TIME  # append command to history file immediately after execution
setopt EXTENDED_HISTORY  # record command start time

# New line between commands, but not at beginning
precmd() {
    precmd() {
        echo
    }
}

