# README

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
