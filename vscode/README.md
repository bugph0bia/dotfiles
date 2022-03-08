VS Code 設定
============

設定の反映方法
--------------

※設定を同期している場合は手順３までは不要。  

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


拡張機能ごとに必要な作業
------------------------

### taichi.vscode-textlint
#### インストール
1. Node.js をインストールする。
2. `C:\Tools\_setting\vscode\taichi.vscode-textlint` に移動し、`textlint-install.bat` を実行して、textlint をインストールする。

### yzane.markdown-pdf
#### MathJaxによる数式レンダリング対応
1. コマンドパレットで拡張機能フォルダを開く（Extentions: Open Extensions Folder）
2. `<拡張機能フォルダ>\yzane.markdown-pdf-x.x.x\template\template.html` を編集し、`</head>` の直前に下記コードを追加する。
    ```html
    <!-- Mathjax による数式対応 -->
    <script type="text/x-mathjax-config">
        MathJax.Hub.Config({
            tex2jax:{
                inlineMath: [['\$','\$'],['\\(','\\)']],
                processEscapes: true
            },
            CommonHTML: {
                matchFontHeight: false
            }
        });
        // 数式を左寄せ
        MathJax.Hub.Config({
            displayAlign: "left",
            displayIndent: "2em"
        });
    </script>
    <script type="text/javascript" async src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-MML-AM_CHTML"></script>
    ```

注意点：  
バックスラッシュのエスケープがうまく機能しないことがある。  
Markdown、MathJax の順にレンダリングが行われるため、Markdownで先にエスケープ処理されてしまうため。Markdownで処理されなかった文字はMathJaxで処理される。  
例えば、`\\` は `\\\\` と書かなければ MathJax で改行と見なされないが、`\sum` はそのまま処理される。

#### Fontawesome によるアイコン表示対応
1. コマンドパレットで拡張機能フォルダを開く（Extentions: Open Extensions Folder）
2. `<拡張機能フォルダ>\yzane.markdown-pdf-x.x.x\template\template.html` を編集し、`</head>` の直前に下記コードを追加する。
    ```html
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>


    <!-- Fontawesome 対応-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript">
        $(function(){
            $('body').find(':contains(":fa")').not('code').each(function(){
                var htmlText = $(this).html();
                $(this).html(htmlText.replace(/:(fa-[\w-]+?):/g, '<i class="fa $1"></i>'));
            });
        });
    </script>
    ```

後は、 Markdown ファイル内で、絵文字と同じようにFontawesome のコードを書くとアイコンに変換される（例： `:fa-user:` ）。  

注意点:  
- jQuery を使用している。
- CDN を利用しているのでインターネット接続が必要。
- コロンに囲まれたコードはまず markdown-pdf によって絵文字として判定される。そこで漏れたものはそのままの文字列で残されるので、上記コードによって Fontawesome 変換される。
    - 絵文字とコードがかぶると問題だが、Fontawesome は必ず fa から始まるので問題ないはず。
