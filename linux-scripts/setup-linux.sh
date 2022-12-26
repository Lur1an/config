sudo apt update && sudo apt upgrade -y
cd Downloads
flatkpak install org.telegram.desktop
wget https://dl.discordapp.net/apps/linux/0.0.21/discord-0.0.21.deb
sudo apt install ./discord-0.0.21.deb
ls -al /dev/kvm
sudo usermod -aG kvm $USER
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.15.0-amd64.deb
sudo apt-get install ./docker-desktop-4.15.0-amd64.deb
flatpak install com.spotify.Client
flatpak install org.remmina.Remmina
sudo apt install snapd
sudo snap install nordpass
sudo apt install neovim
sudo apt-get install zsh -y
sudo chsh -s /usr/bin/zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
curl -L https://bit.ly/n-install | bash
ln -s $(which fdfind) ~/.local/bin/fd
