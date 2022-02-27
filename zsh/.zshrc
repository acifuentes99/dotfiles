# vim: set ft=conf:
export ZSH="/home/acifuentes/.oh-my-zsh"
ZSH_THEME="robbyrussell"
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
