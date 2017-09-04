#! /bin/bash
echo "Install vim configuration..."
echo "cd ~/.vim dirctory"
cd ~/.vim

echo "backup origin vimrc..."
if [ -f "$HOME/.vimrc" ]; then 
	mv ~/.vimrc ~/.vimrc.`date +%Y%m%d`
fi

echo "create new vimrc..."
ln -s ~/.vim/vimrc ~/.vimrc

git submodule init
git submodule update

vi +PluginInstall! +qall
