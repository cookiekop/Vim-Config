#!/bin/sh
echo "Install vim configurations..."

echo "Backup vim config..."

if [ -e "$HOME/.vimrc" ]; then
    mv ~/.vimrc ~/.vimrc.bak
fi

if [ -d "$HOME/.vim" ]; then
    mv ~/.vim ~/.vim.bak
fi

echo "Create new vim config..."
mkdir ~/.vim
cp -r * ~/.vim/
ln -s ~/.vim/vimrc ~/.vimrc

vi +PlugInstall! +qall

echo "Done!"
