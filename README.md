# アプリ紹介

「都内のバイク乗りが通う飲食店を共有しあえるアプリ」を作成しました。<br>

![3906fae4aa2749b27e3f364bb52700c0](https://user-images.githubusercontent.com/67144675/92102584-c2527b80-ee19-11ea-92e8-28f5312880ba.gif)

アプリ名 : BikeMap<br>
　リンク : http://54.199.15.51/<br>
テストID : test@test<br>
パスワード: 123456<br>

# 開発概要
## 開発環境
* ローカル環境
* Github

## フロントエンド
* html
* css

## バックエンド
* Ruby 2.6.5
* Ruby on Rails 6.0.3
* MySQL2

## インフラ
* AWS EC2

## Webサーバ
* Nginx

# 作成理由

人生で初めてのアプリ開発ということで、趣味であるバイクなど自身の「好き」を詰めこんだアプリを作りたかったからです。<br>
都内だとバイクで行ける飲食店が限られているため、行きつけの飲食店を共有でき、備忘録としても使用できるアプリを作成しました。<br>
また、カリキュラムで学習した内容で作成したため、アウトプットのためでもあります。<br>

# こだわったところ

* デザインを白黒で統一し、バイカーが好む無骨なイメージ<br>
* ユーザー視点で考え、機能はシンプル<br>
* 新規登録しなくても一部閲覧可能<br>

# 実装機能予定

* いいね機能非同期通信<br>
* 星レビュー機能<br>
* 検索機能<br>
* 地図表示<br>
* ランキング機能<br>
* レスポンシブ対応

# 機能一覧

* ユーザー新規登録<br>
* ユーザーログアウト<br>
* ユーザー一覧<br>
* ユーザー編集<br>
* ユーザーマイページ<br>
* メールアドレスでのログイン<br>
* 新規投稿<br>
* 投稿一覧<br>
* 投稿内容編集・削除<br>

# 各種バリデーション

*パスワードは6文字以上必須

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

*ログインしていないユーザーはユーザー一覧、投稿一覧のみ閲覧可能<br>

# 使用技術

*devise<br>
*refile<br>
*refile-mini_magick<br>
*bulma-rails<br>

# DB 設計

## users テーブル

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| title    | string  | null: false |
| body     | text    | null: false |
| image_id | string  | null: false |
| user_id  | integer | null: false |

### Association

- has_many :stores

## stores テーブル

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| email            | string  | null: false |
| username         | string  | null: false |
| profile          | text    |
| profile_image_id | string  | null: false |
| user_id          | integer | null: false |

### Association

- belongs to :user
