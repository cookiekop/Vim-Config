#!/bin/sh
echo "Install vim configurations..."

echo "backup vim config"

if [ -f "~/.vimrc" ]; then
    mv ~/.vimrc ~/.vimrc.'bak'
fi

if [ -d "~/.vim" ]; then
    mv ~/.vim ~/.vim.`bak`
fi

echo "create new vimrc..."
mv 'ls' ~/.vim/
ln -s ~/.vim/vimrc ~/.vimrc

vi +PlugInstall! +qall
