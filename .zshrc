# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH:/opt/cuda/bin:$HOME/ti/ccsv8/eclipse:$HOME/.platformio/penv/bin

# Path to your oh-my-zsh installation.
export ZSH=/home/sir-berg/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="candy"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Algumas configs encontradas em: https://github.com/bookercodes/dotfiles/blob/ubuntu/.zshrc
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias shutdown='shutdown now'
alias reboot='systemctl reboot'

alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias i3config='vim ~/.config/i3/config'
alias i3bar='vim ~/.config/i3/i3blocks.conf'
alias pacman='sudo pacman --color=always'
alias diff='diff --color=auto'
alias dir='dir --color=auto'
alias ls='ls --color=always'
alias lh='ls --color=always -lh'
alias tcc='cd ~/TCC/PCMV-ACO-Sequencial'
