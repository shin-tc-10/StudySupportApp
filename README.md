## アプリケーション情報
### アプリケーション概要
- 筋トレサポートアプリを制作しました。
- 接続先情報
- URL :（未デプロイのためgyazoにてご確認ください）
- トップページ
https://gyazo.com/3df52e4a3fea8349facb5eb218d36eeb
- タイマー
https://gyazo.com/6bc3a66ed11d665ee9264213fde9ed6f

### 確認用アカウント
- メールアドレス: test@test
- パスワード:testtest
### 確認用アカウント2
- メールアドレス: test2@test
- パスワード: testtest

## 実装機能
- ユーザ新規登録
- ログイン/ログアウト
- テキスト投稿
- タイマー

## 実装予定
- 商品購入・編集・削除、テキスト投稿編集・削除

## 企画背景
ジムに行く時間がないので自宅で筋トレをしたい方や現在自宅で筋トレをしているけどなかなかモチベーションが続かない方にむけて作成しました。
  このアプリではこなした筋トレメニューや日々の体の変化などを日記にアウトプットし、いつでも見返すことができます。またトレーニングの時間を図るためのタイマー機能もあります。
筋トレ初心者にありがちな「どんな筋トレメニューがあるのだろう」「どんなプロテインを飲めばいいのだろう」といった悩みを解決するための、トレーニングメニューのマニュアルの配備もあり、目的の体型に合わせたプロテインの紹介もしております。


## 開発状況
## 開発環境
- Ruby/Ruby on Rails/MySQL/Github/Visual Studio Code
### 開発期間と平均作業時間
- 開発期間：約2週間
- 1日あたりの平均作業時間：約3時間
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