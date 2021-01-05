#!/bin/sh

# .vimrc のシンボリックを作成
# 絶対パスでリンクする必要あり
ln -s `pwd`/.vimrc ~/.vimrc

# カラーテーマのファイルをコピー
mkdir ~/.vim
mkdir ~/.vim/colors
cp ./.vim/colors/jellybeans.vim ~/.vim/colors/jellybeans.vim
