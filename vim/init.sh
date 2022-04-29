#!/bin/sh

# .vimrc のシンボリックを作成
# 絶対パスでリンクする必要あり
ln -s `pwd`/.vimrc ~/.vimrc

# .vimrc の後で読み込まれる設定
mkdir -p ~/.vim/after/plugin
cspath=~/.vim/after/plugin/common-setting.vim
touch $cspath
# コメント行で行挿入したときの自動コメントアウトを無効化
echo "au FileType * setlocal formatoptions-=ro" >>$cspath

