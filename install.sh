#!/bin/bash
set -e

#						The MIT License
#
#Copyright (c) 2019 Wall Berg Morais <wallbergmorais at gmail.com>
#
#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to
#deal in the Software without restriction, including without limitation the
#rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
#sell copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in
#all copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
#FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
#IN THE SOFTWARE.


# install : Script to set up all configuration about UI, for Debian/Ubuntu.

echo "
	Pacotes utilizados:
		fonts-hack-ttf
		i3
		i3gaps
		i3blocks
		i3blocks-gaps
		numlockx
		compton
		sysstat
		acpi
		rofi
"

# Salvando o folder presente da pasta dotfiles.
std_folder=$(pwd)

# Programas basicos necessarios.
	echo "\n\n\nInstalando os programas basicos para a interface"
	sudo apt install rxvt-unicode-256color git curl build-essential compton \
		acpi numlockx i3 rofi feh xset pulseaudio-utils zsh vim

# Instalando o oh-my-zsh e configurando o zsh.
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	cp ../dotfiles/zshrc $HOME/.zshrc

# Baixando programas necessarios via wget
	echo "\n\n\nBaixando arquivos necessarios via wget"
	wget -i ../dotfiles/via_wget

# Instalando o Playerctl
	echo "\n\n\nInstalando o Playerctl - Controlador de musica"
	sudo dpkg -i playerctl-2.0.1_amd64.deb
	sudo apt install -f

# Instalando dependencias do i3-gaps
	echo "\n\n\n Instalando dependencias do i3-gaps"
	sudo apt install git libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev \
		libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev \
		libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
		libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 \
		libxcb-xrm-dev automake libxcb-shape0-dev -y 

# Instalando o i3-gaps
	echo "\n\n\n Instalando o i3-gaps"
	git clone https://www.github.com/Airblader/i3 i3-gaps 
	cd i3-gaps 
		autoreconf --force --install 
		rm -rf build/ 
		mkdir -p build 
		cd build/ 
			../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers 
			make
			sudo make install

# Voltando ao diretorio raiz, e limpando o i3-gaps
	cd $std_folder
	sudo rm -r i3-gaps

# Configurando i3
	


# Instalando o Polybar
sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev \
libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev \
libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto \
libxcb-xrm-dev libasound2-dev libmpdclient-dev libiw-dev \
libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2 -y

git clone https://github.com/jaagr/polybar.git 
cd polybar 
sudo ./build.sh

# Voltando para o Folder Padrao
cd $std_folder

# Configurando o Polybar
sudo chown -R $USER:$USER ~/.config/polybar
if [ -d ../dotfiles/polybar ]; then
	cp -r ../dotfiles/polybar $HOME/.config/polybar
fi

rm -r polybar


# Indo para o Diretorio de origem
# Para o Script nao se perder

# Instalando Siji-Font

# Fazendo que o Ubuntu pare de proibir fonts bitmap com backup
if [ -f /etc/fonts/70-no-bitmaps.conf ]; then
	sudo mv /etc/fonts/70-no-bitmaps.conf /etc/fonts/70-no-bitmaps.conf.old
fi

# Fazendo copia das configurações do i3, i3blocks, polybar e Scripts



