# BikerMaps

プログラミングスクールTECH::CAMPの個人開発アプリで、「都内のバイク乗りが通う飲食店を共有しあえるアプリ」を作成しました。<br>

# 作成理由

人生で初めてのアプリ開発ということで、趣味であるバイクなど自身の「好き」を詰めこんだアプリを作りたかった。<br>
都内だとバイクで行ける飲食店が限られているため、行きつけの飲食店を共有しあえる。<br>
共有の趣味を持った人との交流の一貫<br>
学習内容のアウトプット<br>

# こだわったところ

ビューは白黒で統一し、シックなイメージ<br>
ユーザー視点で考え、機能はシンプル<br>
新規登録しなくても一部閲覧可能<br>

# 実装機能予定

いいね機能<br>
検索機能<br>
地図表示<br>
ランキング機能<br>

# リンク

https://bikermap.herokuapp.com/

# 機能一覧

ユーザー新規登録<br>
ユーザーログアウト<br>
ユーザー一覧<br>
ユーザー編集<br>
ユーザーマイページ<br>
メールアドレスでのログイン<br>
新規投稿<br>
投稿一覧<br>
投稿内容編集・削除<br>

# 各種バリデーション

```ruby:user.rb
validates :username, presence: true
```

```ruby:store.rb
with_options presence: true do
    validates :title
    validates :body
    validates :image
```
    
# アクセス制限

ログインしていないユーザーはユーザー一覧、投稿一覧のみ閲覧可能<br>
    
# 使用技術

devise<br>
refile<br>
refile-mini_magick<br>
bulma-rails<br>

# DB設計
