rem @echo off

rem �Ǘ��҂Ƃ��Ď��s�����Ƃ��̂��߂́A�J�����g�f�B���N�g���ݒ�
cd /d %~dp0

rem vim�ݒ�t�@�C���̃V���{���b�N�����N
mklink %HOMEPATH%\.vimrc .\.vimrc
mklink %HOMEPATH%\.gvimrc .\.gvimrc
mkdir %HOMEPATH%\vimfiles
mkdir %HOMEPATH%\vimfiles\colors
mklink %HOMEPATH%\vimfiles\colors\jellybeans.vim .\colors\jellybeans.vim
pause
