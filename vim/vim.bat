@echo off
rem �Ǘ��҂Ƃ��Ď��s���邱��


rem �Ǘ��҂Ƃ��Ď��s�����Ƃ��̂��߂́A�J�����g�f�B���N�g���ݒ�
cd /d %~dp0
set curpath=%~dp0

rem vim�ݒ�t�@�C���̃V���{���b�N�����N
mklink %USERPROFILE%\.vimrc %curpath%.vimrc
mklink %USERPROFILE%\.gvimrc %curpath%.gvimrc
mkdir %USERPROFILE%\vimfiles

rem mklink /d %USERPROFILE%\vimfiles\colors 
mkdir %USERPROFILE%\vimfiles\colors
copy %curpath%colors\* %USERPROFILE%\vimfiles\colors\

rem neobundle.vim�̃C���X�g�[��
mkdir %USERPROFILE%\vimfiles\bundle
mkdir %USERPROFILE%\vimfiles\bundle\neobundle.vim
git clone https://github.com/Shougo/neobundle.vim.git %USERPROFILE%\vimfiles\bundle\neobundle.vim

pause
