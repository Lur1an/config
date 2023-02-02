gsettings set org.freedesktop.ibus.panel.emoji hotkey "[]"
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update && sudo apt upgrade -y
mkdir ~/Software
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install org.telegram.desktop
flatpak install com.spotify.Client
flatpak install org.remmina.Remmina

mkdir ~/.fonts
cp ../fonts/'comic code'/'Comic Code Ligatures'/* ~/.fonts
# Nord software
sudo apt install snapd
sudo snap install nordpass
# Neovim
sudo apt install neovim
# Install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
mkdir ~/.local/share/nvim/site/pack/themes/start
git clone https://github.com/doki-theme/doki-theme-vim.git ~/.local/share/nvim/site/pack/themes/start/doki-theme
curl -L https://bit.ly/n-install | bash
# Remap fdfind to fd
ln -s $(which fdfind) ~/.local/bin/fd
# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Toolbox
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.27.2.13801.tar.gz
tar -xvf jetbrains-toolbox-1.27.2.13801.tar.gz
mv jetbrains-toolbox-1.27.2.13801/jetbrains-toolbox ~/Software
sudo apt install tmux
