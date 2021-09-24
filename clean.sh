#!/bin/sh
echo "Restore from vim config backup..."

if [ -e "$HOME/.vimrc.bak" ]; then
    mv ~/.vimrc.bak ~/.vimrc
fi

if [ -d "$HOME/.vim.bak" ]; then
    rm -rf ~/.vim
    mv ~/.vim.bak ~/.vim
fi

echo "Done!"
