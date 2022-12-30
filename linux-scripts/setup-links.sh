rm -rf ~/.ideavimrc
rm -rf ~/.config/nvim
(cd ../nvim; ln -s $(pwd) ~/.config/nvim)
(cd ../intellij; ln -s $(pwd)/.ideavimrc ~/.ideavimrc)
(cd ../tmux; ln -s $(pwd)/.tmux.conf ~/.tmux.conf)

