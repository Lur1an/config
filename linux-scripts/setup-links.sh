rm -rf ~/.ideavimrc
rm -rf ~/.config/nvim
rm -rf ~/.zshrc
rm -rf ~/.tmux.conf
(cd ../nvim; ln -s $(pwd) ~/.config/nvim)
(cd ../intellij; ln -s $(pwd)/.ideavimrc ~/.ideavimrc)
(cd ../tmux; ln -s $(pwd)/.tmux.conf ~/.tmux.conf)
(cd ../zsh/; ln -s $(pwd)/.zshrc ~/.zshrc)

