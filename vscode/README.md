VS Code 設定
============

設定の反映方法
--------------

1. VS Code をインストールする。
2. 設定ファイルを配置する。
    1. 下記の設定ファイルを `%appdata%\Code\User\` へコピーする。
        - setting.json
        - keybindings.json
        - snippets フォルダ
3. `extensions.txt` に記載の拡張機能をインストールする。
    1. 下記のコマンドを実行するか、手動で一つずつインストールを行う。
        ```bat
        rem extensions.txt の内容を1行ずつ読み込んで拡張機能をインストール
        for /f %%f in (extensions.txt) do (
            code --install-extension %%f
        )

        rem ※注意事項
        rem   ・extensions.txt を作成する場合は下記コマンドを実行する。
        rem       code --list-extensions > extensions.txt
        rem   ・code (VS Codeの実行バイナリ) にパスが通っている必要がある。
        ```
4. 拡張機能の外部参照ファイルを配置する。
    1. `extention_files` フォルダを `C:\Tools\_setting\vscode` として配置する。
5. その他、拡張機能ごとに必要な作業を行う。
    - taichi.vscode-textlint
        1. Node.js をインストールする。
        2. `C:\Tools\_setting\vscode\taichi.vscode-textlint` に移動し、`textlint-install.bat` を実行して、textlint をインストールする。