rem @echo off

rem �Ǘ��҂Ƃ��Ď��s�����Ƃ��̂��߂́A�J�����g�f�B���N�g���ݒ�
cd /d %~dp0
set curpath=%~dp0

rem vim�ݒ�t�@�C���̃V���{���b�N�����N
mklink %USERPROFILE%\.vimrc %curpath%.vimrc
mklink %USERPROFILE%\.gvimrc %curpath%.gvimrc
mkdir %USERPROFILE%\vimfiles
rem mklink /d %USERPROFILE%\vimfiles\colors %curpath%colors
mklink /d %USERPROFILE%\vimfiles\bundle %curpath%bundle
pause
