@echo off

rem ���[�U�[�f�B���N�g���ֈړ�
rem cd %userprofile%

rem textlint�{�̂ƃ��[�����J�����g�փC���X�g�[��
call npm i textlint
rem *****************************************************
rem ���[���F�Z�p����
call npm i textlint-rule-preset-ja-technical-writing
rem ���[���F�X�y�[�X�}��
call npm i textlint-rule-preset-ja-spacing
rem *****************************************************

rem textlint�̃v���W�F�N�g��������
call .\node_modules\.bin\textlint --init

set rcfilebase=.textlintrc.base
set rcfile=.textlintrc

rem textlint��rc�t�@�C����ݒ�ς݂̂��̂ɒu��������
if exist %rcfile% del %rcfile%
copy %rcfilebase% %rcfile%

pause
