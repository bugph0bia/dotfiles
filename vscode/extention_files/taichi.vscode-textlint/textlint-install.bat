@echo off

rem ���[�U�[�f�B���N�g���ֈړ�
rem cd %userprofile%

rem �Ǘ��Ҍ����ŋN�������ꍇ�̃J�����g�f�B���N�g���ݒ�
cd %~dp0

rem textlint�{�̂��J�����g�փC���X�g�[��
echo ****************************************************
echo initialize Node.js project
echo ****************************************************
call npm init --yes

rem textlint�{�̂��J�����g�փC���X�g�[��
echo ****************************************************
echo install textlint
echo ****************************************************
call npm i textlint

rem ���[�����C���X�g�[���F�Z�p����
echo ****************************************************
echo install textlint-rule-preset-ja-technical-writing
echo ****************************************************
call npm i textlint-rule-preset-ja-technical-writing
echo;

rem ���[�����C���X�g�[���F�X�y�[�X�}��
echo ****************************************************
echo install textlint-rule-preset-ja-spacing
echo ****************************************************
call npm i textlint-rule-preset-ja-spacing
echo;

rem �t�B���^���C���X�g�[���F�z���C�g���X�g���O�@�\
echo ****************************************************
echo install textlint-filter-rule-whitelist
echo ****************************************************
call npm i textlint-filter-rule-whitelist
echo;

rem textlint�̃v���W�F�N�g��������
echo ****************************************************
echo initialize textlint
echo ****************************************************
call .\node_modules\.bin\textlint --init
echo;

set rcfilebase=.textlintrc.base
set rcfile=.textlintrc

rem textlint��rc�t�@�C����ݒ�ς݂̂��̂ɒu��������
echo ****************************************************
echo make .textlintrc
echo ****************************************************
if exist %rcfile% del %rcfile%
copy %rcfilebase% %rcfile%
echo;

pause
