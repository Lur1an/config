rm -rf ~/.ideavimrc
rm -rf ~/.config/nvim
rm -rf ~/.zshrc
rm -rf ~/.tmux.conf
rm -rf ~/.config/alacritty
rm -rf ~/.themes
rm -rf ~/.xresources
(cd ../nvim; ln -s $(pwd) ~/.config/nvim)
(cd ../intellij; ln -s $(pwd)/.ideavimrc ~/.ideavimrc)
(cd ../tmux; ln -s $(pwd)/.tmux.conf ~/.tmux.conf)
mkdir ~/.config/alacritty
(cd ../alacritty; ln -s $(pwd)/alacritty.yml ~/.config/alacritty/alacritty.yml)
(cd ../zsh/; ln -s $(pwd)/.zshrc ~/.zshrc)
(cd ../zsh/; ln -s $(pwd)/.xresources ~/.xresources)
(cd ../gnome-themes/; ln -s $(pwd)/ ~/.themes)

