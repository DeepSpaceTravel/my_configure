#!/bin/sh
echo USE SUDO

#source ./alias.sh

echo \--Update dnf repo--
sudo dnf update --refresh -y
echo \--dnf repo updated--

echo Installing gcc
sudo dnf install gcc -y
echo gcc installed

echo Installing gcc-c++.x86_64
sudo dnf install gcc-c++.x86_64 -y
echo gcc installed

echo Installing cmake
sudo dnf install cmake -y
echo cmake installed

echo Installing Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
echo Rust installed

echo Installing openssl-devel
sudo dnf install openssl-devel -y
echo openssl-devel installed

# echo Installing Ansible
# sudo dnf install ansible -y
# echo Ansible installed

# echo Installing Ansible-lint
# sudo dnf install ansible-lint -y
# echo Ansible-lint installed

echo Add Flatpak Remote
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo Flatpak remote added

# echo Installing Starship
# cargo install starship --locked
# echo Starship installed

echo Installing Fish Shell
dnf install fish -y
echo Fish installed

echo Installing Snapper
sudo dnf install snapper -y
echo Snapper installed

echo Installing Ripgrep
sudo dnf install ripgrep -y
echo Ripgrep installed

echo Installing Oh-My-Posh
export PATH=$PATH:/home/jellyfish/.local/bin
curl -s https://ohmyposh.dev/install.sh | bash -s
echo Oh-My-Posh installed

echo Installing Git
sudo dnf install git -y
echo Git installed

echo Installing fcitx5-chewing
sudo dnf install fcitx5-chewing -y
echo fcitx5-chewing installed

echo Installing fcitx5-mozc
sudo dnf install mozc -y
echo fcitx5-mozc installed

echo Installing FastFetch
sudo dnf install fastfetch -y
echo FastFetch installed

echo Installing Visual Studio Code 
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
dnf check-update
sudo dnf install code -y# or code-insiders
echo Visual Studio Code installed

# echo Installing Chromium
# sudo dnf install chromium -y
# echo Chromium installed

echo Installing Google Chrome Browser from Flathub
flatpak install flathub com.google.Chrome -y
echo Google Chrome Browser installed

echo Installing Brave Browser from Flathub
flatpak install flathub com.brave.Browser -y
echo Brave Browser installed

echo Installing Discord from Flathub
flatpak install flathub com.discordapp.Discord -y
echo Discord installed

echo Installing Bottles
flatpak install flathub com.usebottles.bottles -y
echo Bottles installed

# curl https://desktop.line-scdn.net/win/new/LineInst.exe

echo Installing VLC Player
sudo dnf install vlc -y
echo VLC Player installed

echo Installing Helix Editor
sudo dnf install helix -y
echo Helix Editor installed

echo Installing GIMP
sudo dnf install gimp -y
echo GIMP installed

# echo Installing Pandoc
# sudo dnf install pandoc -y
# echo Pandoc installed

# echo Installing Typst (Used for Pandoc)
# cargo install typst --locked
# echo Typst COMPILER installed

echo Installing NMap
sudo dnf install nmap -y
echo NMap installed

echo Installing Btop
sudo dnf install btop -y
echo Btop installed

# echo Installing Kismet
# dnfins kismet
# echo Kismet installed

# echo Installing AirCrack
# sudo dnf install aircrack-ng -y
# echo AirCrack installed

#echo Installing WireShark
#sudo dnf install wireshark -y
#echo WireShark installed

#echo Installing golang
#sudo rm -rf /usr/local/go
#sudo dnf install golang -y
#echo golang installed

#echo Installing LazyGit
#go install github.com/jesseduffield/lazygit@latest
#echo LazyGit installed

#THIS APP IS A FUCKING SCAM
# echo Installing BetterCap
# sudo dnf install -y pkg-config libpcap-devel libnetfilter_queue
# If it doesn't work, install `libusb` 
# go install github.com/bettercap/bettercap/v2@master
# echo BetterCap installed

# echo Installing FreeCAD
# sudo dnf install freecad -y
# echo FreeCAD installed 

#echo Installing OBS Studio from Flathub
#flatpak install flathub com.obsproject.Studio -y
#echo OBS Studio installed

#echo Installing OBS Studio

#echo OBS Studio installed

echo Installing Spotify from Flathub
flatpak install flathub com.spotify.Client -y
echo Spotify installed

#echo Installing Podman
#sudo dnf -y install podman
#echo Podman installed

echo Installing rclone
sudo -v ; curl https://rclone.org/install.sh | sudo bash
echo rclone installed
