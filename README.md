# アプリケーション名
シフト管理アプリケーション

# アプリケーション概要
仕事のシフトを職員が閲覧できる。連絡事項のやり取りができるチャット機能がある。

# URL
https://bus-schedule-37808.herokuapp.com/


# テスト用アカウント
・ Basic認証ID :nanati

・ Basic認証パスワード :7718

・ メールアドレス :regu@com

・ パスワード :regutaso1

# 利用方法
## スケジュール確認
1.トップページ上部のボタンを押してユーザー登録を行う。

2.スケジュールボタンを押すとカレンダーが表示されるのでシフトを確認できる。
## 連絡チャット
1.トップページの上部から連絡ボタンを押してチャット画面に移動する。

2.チャットルーム名とチャット相手を選択してチャットルームを作成する。

3.シフトを組む際の休み希望日を連絡するなど、仕事の連絡事項を伝える。


# アプリケーションを作成した背景
職場でバス乗車職員のシフトを組む仕事において、職員は休み希望日を紙ベースでシフト作成担当者に提出していた。紙ベースでのやりとりは書類の紛失、書類の提出や確認に遅れが出ることがある、というデメリットがあった。そのデメリットの解消のため、休み希望日はチャットで行い、シフトも確認できるアプリケーションを開発することにした。


# 洗い出した要件
https://docs.google.com/spreadsheets/d/1dYcUoy9oraXT-QqgrFZUfbBMAGIWFItu3Ce2fYYjW4Y/edit#gid=982722306


# 実装した機能についての画像やGIFおよびその説明
TOP画面
[![Image from Gyazo](https://i.gyazo.com/70c43ed26bacd28f4aed86075aed4fe2.jpg)](https://gyazo.com/70c43ed26bacd28f4aed86075aed4fe2)

サインアップ画面
[![Image from Gyazo](https://i.gyazo.com/6ca24348c7e9fa546684a7adf7a6559e.png)](https://gyazo.com/6ca24348c7e9fa546684a7adf7a6559e)

ログイン動画
[![Image from Gyazo](https://i.gyazo.com/10f2d09d744f60af0d675e460f955496.gif)](https://gyazo.com/10f2d09d744f60af0d675e460f955496)

スケジュール画面
[![Image from Gyazo](https://i.gyazo.com/b833f922183e5ed4720982e4525152de.png)](https://gyazo.com/b833f922183e5ed4720982e4525152de)

チャットルーム作成動画
[![Image from Gyazo](https://i.gyazo.com/efd1d49e297a9ab405eee22c24e27edb.gif)](https://gyazo.com/efd1d49e297a9ab405eee22c24e27edb)

チャット動画
[![Image from Gyazo](https://i.gyazo.com/fa12f64e310287519f662bf921959a26.gif)](https://gyazo.com/fa12f64e310287519f662bf921959a26)

# 実装予定の機能
各職員がどの運行先へ何回運転したかをカウントし、記録する機能を実装予定。


# データベース設計
[![Image from Gyazo](https://i.gyazo.com/92db6d0f17cb435d2f70aa3bb77803d5.png)](https://gyazo.com/92db6d0f17cb435d2f70aa3bb77803d5)


# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/2b19fe50f62282c22a9b8eba76f512fb.png)](https://gyazo.com/2b19fe50f62282c22a9b8eba76f512fb)


# 開発環境
Ruby/Ruby on Rails/MySQL/Github/Visual Studio Code/Heroku


# 工夫したポイント
職場では幅広い年齢層の職員が在籍するため、誰が見ても分かりやすくシンプルな見ため、使い勝手を意識した。

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| employee_number    | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :post_users
- has_many :posts, through: :post_users
- has_many :messages

## posts テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :post_users
- has_many :users, through: :post_users
- has_many :messages

## post_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| post   | references | null: false, foreign_key: true |

### Association

- belongs_to :post
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| post    | references | null: false, foreign_key: true |

### Association

- belongs_to :post
- belongs_to :user