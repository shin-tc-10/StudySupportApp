## アプリケーション情報
### アプリケーション概要
- Study support app（学習サポートアプリ）を制作しました。
- 接続先情報
- URL：https://studysupportapp.herokuapp.com/

### 確認用アカウント
- メールアドレス: test@test
- パスワード:testtest
### 確認用アカウント2
- メールアドレス: test2@test
- パスワード: testtest

## 実装機能
- ユーザ新規登録
- ログイン/ログアウト
- テキスト投稿・編集・詳細・削除
- タイマー

## 実装予定
- Todoリスト

## 企画背景
より効率よく学習する方法はないかと考えたときに、その日のやることを決める「Todoリスト」や何時間学習するかを設定する「タイマー機能」付きのアプリがあれば便利だと思い作成しました。
またその日学習した内容をアウトプットするための投稿機能もございますので、知識の定着もしやすいようになっております。

## 開発状況
## 開発環境
- Ruby/Ruby on Rails/JavaScript/haml/scss/MySQL/Github/Visual Studio Code
### 開発期間と平均作業時間
- 開発期間：2週間
- 1日あたりの平均作業時間：約4時間
### 開発体制
- 人数：1名

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|

### Association
- has_many :posts

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null:false|
|text|string|null:false|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user