sudo apt update && sudo apt upgrade -y
mkdir Software
cd Downloads
flatpak install org.telegram.desktop
flatpak install com.spotify.Client
flatpak install org.remmina.Remmina

wget https://dl.discordapp.net/apps/linux/0.0.21/discord-0.0.21.deb
sudo apt install ./discord-0.0.21.deb
# Nord software
sudo apt install snapd
sudo snap install nordpass
wget https://downloads.nordcdn.com/apps/linux/install.sh
chmod +x install.sh
sudo ./install.sh
rm install.sh
# Neovim
sudo apt install neovim
# zsh and ohmyzsh
sudo apt-get install zsh -y
sudo chsh -s /usr/bin/zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
curl -L https://bit.ly/n-install | bash
# Remap fdfind to fd
ln -s $(which fdfind) ~/.local/bin/fd
# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Toolbox
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.27.2.13801.tar.gz
tar -xvf jetbrains-toolbox-1.27.2.13801.tar.gz
mv jetbrains-toolbox-1.27.2.13801/jetbrains-toolbox ~/Software
