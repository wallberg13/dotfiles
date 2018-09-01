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
alias pacman='pacman --color=always'
alias diff='diff --color=auto'
alias dir='dir --color=auto'
alias ls='ls --color=always'
alias lh='ls --color=always -lh'

# Projetos
# TCC
alias tcc='cd ~/TCC/PCMV-ACO-Sequencial'
alias tcch='cd ~/TCC/PCMV-ACO-Sequencial ; vim samples.h -c "vsplit util.h" -c "split main.h"'
alias tccc='cd ~/TCC/PCMV-ACO-Sequencial ; vim util.c -c "vsplit samples.c"'

# Maratona Linux
alias mm='cd ~/Maratona/maratona-meta'
alias mf='cd ~/Maratona/maratona-firewall'
alias gmm='cd ~/Git/maratona-meta'
alias gmf='cd ~/Git/maratona-firewall'
alias kc1='cd ~/Git/Minicurso-Kicad/Aula01-Instalacao'
alias kc2='cd ~/Git/Minicurso-Kicad/Aula02-Atalhos-Filtro'

# Seguranca Computacional
alias sc='cd ~/Git/CP-UTFPR/Seguranca-Computacional/'
alias sce='cd ~/Git/CP-UTFPR/Seguranca-Computacional/Exercicios/'
alias scr='cd ~/Git/CP-UTFPR/Seguranca-Computacional/Relatorios/'

# Desenvolvimento de dispositivos moveis.
alias ddm='cd ~/Git/CP-UTFPR/Desenvolvimento_Moveis'
