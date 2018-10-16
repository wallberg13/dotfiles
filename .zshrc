# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.local/bin:/var/lib/flatpak/exports/bin:$HOME/.arduino-1.8.7/:/usr/local/cuda/bin
# Path to your oh-my-zsh installation.
export ZSH=/home/sir-berg/.oh-my-zsh
# Path to cuda directory
export CUDADIR=/usr/local/cuda

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dpoggi"

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
alias diff='diff --color=auto'
alias dir='dir --color=auto'
alias ls='ls --color=always'
alias lh='ls --color=always -lh'


# Projetos

# TCC
	# Pastas
		alias tcc='cd ~/TCC/PCMV-Sequencial/PCMV-ACO-Sequencial'
		alias tcs='cd ~/TCC/PCMV-Sequencial/PCMV-ACO-Sequencial-Sum'
		alias tce='cd ~/TCC/PCMV-Sequencial/PCMV-ACO-Sequencial-Elite'

	# Sequencial Normal - Estavél
		alias  tcch='tcc ; vim ACO.h -c "vsp PCMV.h" -c "sp samples.h"'
		alias  tccc='tcc ; vim ACO.c -c "vsp PCMV.c" -c "sp samples.c"'

	# Sequencial Normal - Sem o Sum - Estavél
		alias tcchs='tcs ; vim ACO.h -c "vsp PCMV.h" -c "sp samples.h"'
		alias  tccs='tcs ; vim ACO.c -c "vsp PCMV.c" -c "sp samples.c"'

	# Sequencial - Elite - Estável
		alias tcche='tce ; vim ACO.h -c "vsp PCMV.h" -c "sp samples.h"'
		alias  tcce='tce ; vim ACO.c -c "vsp PCMV.c" -c "sp samples.c"'

	# Paralelo OpenMP - Ants
		alias tccPa='cd ~/TCC/PCMV-Paralelo-CPU/PCMV-Paralelo-Ant'
		alias tcPac='tccPa ; vim ACO.c -c "vsp PCMV.c" -c "sp samples.c"'
		alias tcPah='tccPa ; vim ACO.h -c "vsp PCMV.h" -c "sp samples.h"'

	# Paralelo OpenMP - Operacoes
		alias tccPo='cd ~/TCC/PCMV-Paralelo-CPU/PCMV-Paralelo-Op'
		alias tcPoc='tccPo ; vim ACO.c -c "vsp PCMV.c" -c "sp samples.c"'
		alias tcPoh='tccPo ; vim ACO.h -c "vsp PCMV.h" -c "sp samples.h"'

# Maratona Linux
	alias mm='cd ~/Maratona/maratona-meta'
	alias mf='cd ~/Maratona/maratona-firewall'
	alias gmm='cd ~/Git/maratona-meta'
	alias gmf='cd ~/Git/maratona-firewall'

#Kicad
	alias kc1='cd ~/Git/Minicurso-Kicad/Aula01-Instalacao'
	alias kc2='cd ~/Git/Minicurso-Kicad/Aula02-Atalhos-Filtro'

# Seguranca Computacional
	alias sc='cd ~/Git/CP-UTFPR/Seguranca-Computacional/'
	alias sce='cd ~/Git/CP-UTFPR/Seguranca-Computacional/Exercicios/'
	alias scr='cd ~/Git/CP-UTFPR/Seguranca-Computacional/Relatorios/'

# Desenvolvimento de dispositivos moveis.
	alias ddm='cd ~/Git/ddm_comedouro/'

# Maratona Linux - Computer on the Beach
	alias cot1='cd ~/Git/maratona-linux-cotb/'
	alias cmc='cd ~/Commits/ArtigosCOTB/'
	alias relf='cd ~/Dropbox/Maratona/Maratona_Linux-Pasta_Pessoal/Relatorios/Relatorio-Final'

# Estagio - TSPDL
	# Pasta
		alias tspdl='cd ~/Dropbox/Estagio/Desenvolvimento/'
	# Arquivos C
		alias tspC='tspdl ; vim samples.c -c "vsp util.c" -c "sp load.c"'
	# Arquivos H
		alias tspH='tspdl ; vim samples.h -c "vsp util.h" -c "sp load.h"'
