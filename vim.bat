::@echo off

:: vim�ݒ�t�@�C���̃V���{���b�N�����N
mklink %HOMEPATH%\.vimrc .\.vimrc
mklink %HOMEPATH%\.gvimrc .\.gvimrc
mkdir %HOMEPATH%\vimfiles
mkdir %HOMEPATH%\vimfiles\colors
mklink %HOMEPATH%\vimfiles\colors\jellybeans.vim .\colors\jellybeans.vim
pause
