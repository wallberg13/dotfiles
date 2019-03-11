#!/bin/bash

"
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
"

# Salvando o folder
std_folder=$(pwd)

# Instalador para Ubuntu/Debian


# Programas basicos.
# rxvt-unicode-256color
sudo apt install rxvt-unicode-256color git curl build-essential


# Instalando dependencias do i3 e i3-gaps
sudo apt install git libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev \
libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev \
libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 \
libxcb-xrm-dev automake libxcb-shape0-dev -y 
git clone https://www.github.com/Airblader/i3 i3-gaps 
cd i3-gaps 
autoreconf --force --install 
rm -rf build/ 
mkdir -p build 
cd build/ 
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers 
make
sudo make install

# Indo para o Diretorio de origem
# Para o Script nao se perder
cd std_folder

# Instalando Siji-Font

# Fazendo que o Ubuntu pare de proibir fonts bitmap com backup
sudo mv /etc/fonts/70-no-bitmaps.conf /etc/fonts/70-no-bitmaps.conf.old

# Fazendo copia das configurações do i3, i3blocks, polybar e Scripts



