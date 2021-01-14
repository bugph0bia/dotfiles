vim用の設定
===


## 動作確認環境
- Ubuntu 20.04 LTS (on WSL2)

## 使用方法
1. `.vimrc` をホームへ配置。
    - `init.sh` を実行でも良い。
2. vim を起動。
3. `:PlugInstall` を実行。

## .vimrc 作成経緯
1. [Vim Bootstrap](https://vim-bootstrap.com/) で雛形を作成する。
2. `.vimrc` の末尾に追加の設定を入れる。
    - その他、一部コメントを入れたりした。

## その他
### インサートモードを抜けるときに IME を OFF にする
`.vimrc` 上の設定は色々試したがうまくいかなかった。  
Windows (WSL2) 上で使用する場合は、Windows 側の IME のプロパティ設定で無変換/変換キーを IME-OFF/IME-ON に割り当てることで解決したほうが早い。  

### CapsLock を Ctrl に割り当てる
Windows (WSL2) 上で使用する場合は、[cap2ctrl](https://docs.microsoft.com/en-us/sysinternals/downloads/ctrl2cap) を使用することで解決。  

