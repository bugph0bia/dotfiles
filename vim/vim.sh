#!/bin/sh

# vim設定ファイルのシンボリックリンク 相対パスだとうまくいかないので停止
#ln -fs $(readlink -f ./.vimrc) ~
#ln -fs $(readlink -f ./.gvimrc) ~
#mkdir ~/.vim
#mkdir ~/.vim/colors
#ln -fs $(readlink -f ./colors/jellybeans.vim) ~/.vim/colors

# とりあえずコピー
cp ./.vimrc ~
cp ./.gvimrc ~
mkdir ~/.vim
mkdir ~/.vim/colors
cp ./colors/* ~/.vim/colors
mkdir ~/.vim/bundle
mkdir ~/.vim/bundle\neobundle.vim
git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle\neobundle.vim
