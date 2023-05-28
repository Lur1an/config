gsettings set org.freedesktop.ibus.panel.emoji hotkey "[]"
gsettings set org.gnome.desktop.interface enable-animations false
sudo apt install tmux
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update && sudo apt upgrade -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --user org.telegram.desktop
flatpak install --user org.remmina.Remmina

mkdir ~/.fonts
cp ../fonts/'comic code'/'Comic Code Ligatures'/* ~/.fonts
cp ../fonts/nerdfonts/* ~/.fonts
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
# Remap fdfind to fd
ln -s $(which fdfind) ~/.local/bin/fd
# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
