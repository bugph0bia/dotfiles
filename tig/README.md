vim用の設定
===


## 動作確認環境
- Ubuntu 20.04 LTS (on WSL2)
- Windows 10 (Git for Windows)

## 使用方法
1. `.tigrc` をディレクトリをホームへ配置。
    - `init.sh` を実行でも良い。
2. tig を起動。

## .tigrc 作成経緯
- `set line-graphics = ascii`
    - main view (コミットツリー) の表示においてフォントによっては罫線がうまく表示されなかった。フォントを変えたくないので、utf-8 モードではなく ascii モードに設定する。

## その他
### Windows のコマンドプロンプトで使用する場合
Git for Windows をインストールして、下記にパスを通す。
- `C:\Program Files\Git\cmd`
- `C:\Program Files\Git\bin`
- `C:\Program Files\Git\usr\bin\`
