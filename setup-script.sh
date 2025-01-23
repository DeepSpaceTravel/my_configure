#!/bin/bash
echo USE SUDO

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
sudo dnf install opensll-devel -y
echo openssl-devel installed

echo Installing Ansible
sudo dnf install ansible -y
echo Ansible installed

echo Add Flatpak Remote
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo Flatpak remote added

echo Installing Starship
cargo install starship --locked
echo Starship installed

echo Installing Fish Shell
dnf install fish -y
echo Fish installed

echo Installing Git
sudo dnf install git -y
echo Git installed

echo Installing fcitx5-chewing
sudo dnf install fcitx5-chewing -y
echo fcitx5-chewing installed

echo Installing FastFetch
sudo dnf install fastfetch -y
echo FastFetch installed

echo Installing Visual Studio Code from Flathub
flatpak install flathub com.visualstudio.code -y
echo Visual Studio Code installed

echo Installing Google Chrome Browser from Flathub
flatpak install flathub com.google.Chrome -y
echo Google Chrome Browser installed

echo Installing Brave Browser from Flathub
flatpak install flathub com.brave.Browser -y
echo Brave Browser installed

echo Installing Discord from Flathub
flatpak install flathub com.discordapp.Discord -y
echo Discord installed

echo Installing VLC Player
sudo dnf install vlc -y
echo VLC Player installed

echo Installing Helix Editor
sudo dnf install helix -y
echo Helix Editor installed

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
