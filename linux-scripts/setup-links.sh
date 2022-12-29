rm -rf ~/.ideavimrc
rm -rf ~/.config/nvim
(cd ../nvim; ln -s $(pwd) ~/.config/nvim)
(cd ../intellij; ln -s $(pwd)/.ideavimrc ~/.ideavimrc)


