Spring Boot プロジェクトを GitHub にアップロードする手順（VS Code）
1. GitHub リポジトリを作成
GitHub にアクセスし、ログインする。
右上の「＋」→「New repository」をクリック。
リポジトリ名を helloworld にする（または適当な名前）。
「Add a README file」にはチェックを入れない（VS Code で初期化するため）。
「Create repository」をクリックしてリポジトリを作成。
2. VS Code で Git を初期化
VS Code のターミナルを開く

ショートカット: Ctrl + Shift + （バッククオート）
または ターミナル → 新しいターミナル を開く。
プロジェクトフォルダ内で Git を初期化
sh
git init
（補足） .git というフォルダが作成され、Git の管理が始まる。

GitHub にアップするファイルを選択（.gitignore を確認）

.gitignore に不要なファイル（target/, .mvn/, .idea/, *.class など）があるか確認。
もし .gitignore がない場合は、作成して以下を追加：
pgsql
コピーする
編集する
target/
.mvn/
.idea/
*.class
*.log
すべてのファイルを Git に追加

sh
git add .
（補足） git status で追加されたファイルを確認できる。

最初のコミットを作成
sh
git commit -m "Initial commit"
3. GitHub リポジトリに接続
GitHub のリポジトリ URL をコピー

GitHub のリポジトリページで SSH または HTTPS の URL をコピー。 例:
arduino
https://github.com/your-username/helloworld.git
GitHub リポジトリをリモートに追加

sh
git remote add origin https://github.com/your-username/helloworld.git
（your-username は GitHub のユーザー名に変更）


4. GitHub にプッシュ
