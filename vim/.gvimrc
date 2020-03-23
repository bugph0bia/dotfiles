"Display
colorscheme jellybeans
syntax on		"シンタックスカラーリングを設定する

set number	"行番号を表示する
set title	"編集中のファイル名を表示する

set showcmd		"入力中のコマンドを表示する
set ruler		"座標を表示する
set showmatch	"閉じ括弧の入力時に対応する括弧を表示する
set matchtime=3	"showmatchの表示時間

set laststatus=2	"ステータスラインを常に表示する

if has('win32')
	set guifont=Myrica_M:h11		"半角文字の設定
	set guifontwide=Myrica_M:h11	"全角文字の設定
endif
if has('unix')
	set guifont=Ricty\ Diminished\ Discord\ 12		"半角文字の設定
	set guifontwide=Ricty\ Diminished\ Discord\ 12	"全角文字の設定
endif

set lines=50   " 縦幅　デフォルトは24
set columns=140    " 横幅　デフォルトは80

