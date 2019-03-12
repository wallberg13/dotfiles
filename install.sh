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

# Creditos:
# Terminal Root:
# http://terminalroot.com.br/2019/01/ubuntu-i3gaps-albert-cava-polybar.html
#
# 

echo "
	Pacotes instalados utilizados:
		name			- inst	-	tested
		rxvt-unicode	- OK	- 	pass
		fonts-hack-ttf 	- OK	- 	pass
		i3				- OK	-  	pass
		i3gaps			- OK	- 	pass
		numlockx		- OK	- 	pass
		compton			- OK	- 	pass
		sysstat			- OK 	- 	pass
		acpi			- OK	- 	pass
		rofi			- OK	- 	pass
		pulseaudio-utils- OK	- 	pass
		x11-utils		- OK	- 
		feh				- OK	-	pass 
		pywal			-	- 
		siji font		-	- 
		zsh & oh-my-zsh	- OK	- 
		polybar			- 	- 
		neofetch		- OK 	- 
		scrot			- OK	- 
		htop			- OK	- 
		Font Awesome 5 	- OK 	- 
		curl 			- OK	- 
		imagemagick		- OK	- 
		vim				- OK	- 
		build-essential	- OK	- 
		gucharmap		- OK	- 
		unzip			- OK	- 
		kde-spectacle 	- OK	-
		vim				- 		-
		powerline-vim	-		-
		powerline-poly	-		-
"

# Salvando o folder presente da pasta dotfiles.
std_folder=$(pwd)

# Update no sistema
	sudo apt update
	sudo apt upgrade -y

# Programas basicos necessarios.
	echo -e "\n\n\nInstalando os programas basicos para a interface"
	sudo apt install rxvt-unicode-256color curl build-essential compton \
		acpi numlockx i3 rofi feh x11-xserver-utils pulseaudio-utils zsh vim\
		fonts-hack-ttf scrot neofetch htop sysstat imagemagick gucharmap \
		unzip kde-spectacle -y

# Configurando o rxvt-unicode
	cp $std_folder/Xresources $HOME/.Xresources
	xrdb $HOME/.Xresources

# Instalando o oh-my-zsh e configurando o zsh.
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

	cp $std_folder/zshrc $HOME/.zshrc

# Copiando os arquivos de configuração do Vim
	cp $std_folder/vimrc $HOME/.vimrc
	cp -r $std_folder/vim $HOME/.vim

# Baixando programas necessarios via wget
	echo -e "\n\n\nBaixando arquivos necessarios via wget"
	wget -i $std_folder/via_wget

	# Instalando o Playerctl - Via wget
		echo -e "\n\n\nInstalando o Playerctl - Controlador de musica"
		if [ -f $std_folder/playerctl-2.0.1_amd64.deb ]; then
			sudo dpkg -i playerctl-2.0.1_amd64.deb
			sudo apt install -f
			rm playerctl-2.0.1_amd64.deb
		else
			echo -e "\n\n\n Arquivo do PLAYERCTL não baixado \n\n\n"
		fi

	# Instalando o Fonts Awesome
		echo -e "\n\n\nInstalando o Fonts Awesome 5"
		if [ -f $std_folder/fontawesome-free-5.7.2-desktop.zip ]; then
			
			font_file_name=fontawesome-free-5.7.2-desktop.zip
			unzip $font_file_name
			rm $font_file_name # Rm zip file

			cd fontawesome-free-5.7.2-desktop/otfs
				mkdir -p $HOME/.fonts # Mkdir if not exists
				cp *.otf $HOME/.fonts # Copy to $HOME dir fonts
				fc-cache -f # Update fonts cache
			cd $std_folder
			sudo rm -rf fontawesome-free-5.7.2-desktop # rm dir created.

		else
			echo -e "\n\n\nArquivo do FONT AWESOME 5 não baixado\n\n\n"
		fi

# Instalando dependencias do i3-gaps
	echo -e "\n\n\n Instalando dependencias do i3-gaps"
	sudo apt install git libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev \
		libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev \
		libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
		libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 \
		libxcb-xrm-dev automake libxcb-shape0-dev -y 

# Instalando o i3-gaps
	echo -e "\n\n\n Instalando o i3-gaps"
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

# Configurando i3 - Copiando a pasta do i3 e Scripts
	cp -r $std_folder/i3 $HOME/.config
	cp -r $std_folder/Scripts $HOME/.Scripts
	cp $std_folder/wallpaper.jpg $HOME/Pictures/

# Instalando o Polybar
	sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev \
		libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev \
		libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto \
		libxcb-xrm-dev libasound2-dev libmpdclient-dev libiw-dev \
		libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2 -y

	git clone https://github.com/jaagr/polybar.git polybar-git
	cd polybar-git
		sudo ./build.sh
		sudo make install

# Voltando para o Folder Padrao
	cd $std_folder

# Configurando o Polybar
	echo -e "\n\n\n Adicionando os arquivos do Polybar "
	if [ -d $std_folder/polybar ]; then
		cp -r $std_folder/polybar $HOME/.config
	fi

	sudo rm -r polybar-git

# Instalando Siji-Font
	echo -e "\n\n\n Instalando Font Siji - Polybar"
	git clone https://github.com/stark/siji
	cd siji
		cp bdf/siji.bdf $HOME/.fonts
		cp pcf/siji.pcf $HOME/.fonts
		fc-cache -f
	cd $std_folder
	sudo rm -rf siji

# Fazendo que o Ubuntu pare de proibir fonts bitmap com backup
	echo -e "\n\n\n Tirando a opção do Ubuntu de proibir bitmaps fonts"
	if [ -f /etc/fonts/70-no-bitmaps.conf ]; then
		sudo mv /etc/fonts/70-no-bitmaps.conf /etc/fonts/70-no-bitmaps.conf.old
	fi
