#!/bin/bash

echo "🔧 Atualizando o sistema..."
sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y
sudo apt autoremove -y

echo "🧠 Detectando e instalando drivers..."
sudo ubuntu-drivers autoinstall

echo "🖨️ Instalando drivers de impressora e periféricos..."
sudo apt install -y cups sane-utils printer-driver-all \
xserver-xorg-input-all xserver-xorg-video-all \
linux-firmware v4l-utils

echo "🌐 Instalando navegadores..."
sudo apt install -y firefox
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave.com/signing-key.asc
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | \
sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update && sudo apt install -y brave-browser

echo "🔐 Bitwarden (via snap)..."
sudo snap install bitwarden

echo "🎮 Instalação de jogos e emuladores..."
sudo apt install -y steam retroarch pcsx2

echo "🖨️ Utilitários de impressão e digitalização..."
sudo apt install -y cups gscan2pdf

echo "🎨 Programas de arte e edição..."
sudo apt install -y gimp krita blender

echo "💽 Gerenciamento de disco..."
sudo apt install -y gparted

echo "📝 Escritório..."
sudo apt install -y libreoffice

echo "🎬 Edição de vídeo e streaming..."
sudo apt install -y kdenlive obs-studio

echo "🌊 Torrent..."
sudo apt install -y qbittorrent

echo "📄 Leitores e criação de mídia..."
sudo apt install -y okular usb-creator-gtk vlc

echo "📧 E-mail..."
sudo apt install -y thunderbird

echo "🎧 Mídia e som..."
sudo apt install -y clementine

echo "💬 Discord..."
wget -O discord.deb "https://discord.com/api/download?platform=linux&format=deb"
sudo apt install -y ./discord.deb
rm discord.deb

echo "🧑‍💻 AnyDesk..."
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo gpg --dearmor -o /usr/share/keyrings/anydesk.gpg
echo "deb [signed-by=/usr/share/keyrings/anydesk.gpg] http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk.list
sudo apt update
sudo apt install -y anydesk

echo "💿 Gravador de discos..."
sudo apt install -y k3b

echo "📺 Centro de mídia..."
sudo apt install -y kodi

echo "🧅 Tor Browser (via Flatpak)..."
sudo apt install -y flatpak gnome-software-plugin-flatpak
flatpak install -y flathub com.github.micahflee.torbrowser-launcher

echo "🔐 ProtonVPN..."
sudo apt install -y openvpn dialog python3-pip python3-setuptools
pip3 install protonvpn-cli

echo "🧾 Utilitários adicionais..."
sudo apt install -y notepadqq p7zip-full

echo "📚 Sumatra PDF (substituto sugerido: Foliate)..."
flatpak install -y flathub com.github.johnfactotum.Foliate

echo "✅ Tudo pronto! É recomendável reiniciar o sistema."

