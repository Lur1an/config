gsettings set org.freedesktop.ibus.panel.emoji hotkey "[]"
gsettings set org.gnome.desktop.interface enable-animations false

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update && sudo apt upgrade -y
sudo apt install tmux
sudo apt install gnome-tweaks
sudo apt install ripgrep

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
# Remap fdfind to fd
ln -s $(which fdfind) ~/.local/bin/fd

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
