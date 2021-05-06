# easy jupyterhub
jupyter hub を１行で立ち上げるツール

以下のサイトを参考にさせていただきました。
[DockerでJupyterhubを試してみた](https://qiita.com/dyamaguc/items/db1da3084e36029f20cc)

# Usage
1. `git clone https://github.com/hand10ryo/easy_jupyterhub.git jupyterhub`
2. `cd jupyterhub`
3. `docker-compose up -d`
4. 127.0.0.1:8000 にアクセス

## 管理者
1. sign up から user: root , pass: 任意 で登録
2. sign in から登録した user/pass でログイン
3. file > Hub Control Pane > Admin でAdmin画面へ
4. 利用者の管理や sever の管理を行える

## 新規利用者の登録
1. (管理者 or 新規利用者) sign up から user: root , pass: 任意 で申請
2. (管理者) `[url]:8000/hub/authorize` にアクセス (ブラウザに手打ち)
3. (管理者)　申請されたユーザーを `Authorize` ボタンを押下
4. (管理者) file > Hub Control Pane > Admin から `Add User`より、ユーザーのアカウントを追加
5. (新規利用者) 申請した user/pass でログイン

## その他
- マウントの割り当ては、ローカルの `./work/` を コンテナの `/home/` に割り当てしてある
- docker-compose.yml から任意に変更可能
- mac OS だと network_mode:host と相性が悪いようなので、8000番ポートを開けるように変更すると良い



