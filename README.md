# 今流行りのながのCAKEのサイト
## ⻑野県にある⼩さな洋菓⼦店「ながのCAKE」の商品を通販するためのECサイト

# 機能一覧
## deviseを使用して顧客側と管理者側のユーザーを管理しています。

## 顧客
### 1 ログイン機能
#### ・メールアドレス、パスワードでログインできる。
#### ・ログイン時のみ利用できる機能が利用できるようになる。
### 2 ログアウト機能
#### ・ログインしている状態からログアウト状態にする。
### ・ログイン時のみ利用できる機能が利用できなくなる。
### 3 商品一覧表示機能
#### ・商品を一覧表示する。
#### ・検索結果を表示する場合は、検索条件に当てはまる商品のみ一覧表示する。
### 4 商品詳細情報表示機能
#### ・商品一覧画面で選択した商品の詳細情報を表示する。
#### ・カート追加機能が表示されている。
### 5 カート追加機能
#### ・カートに商品を追加することができる。
### 6 カート一覧機能
#### ・カートの中身を一覧表示することができる。
### 7 カート編集機能
#### ・カートの中身の個数を編集したり、削除したりすることができる。
### 8 注文機能
#### ・カートの中身の購入をすることができる。
#### ・支払方法や発送先を設定することができる。
### 9 会員情報編集機能
#### ・登録している情報を編集することができる。
### 10 退会機能
#### ・退会手続きをすることができる。
### 11 配送先追加・編集機能
#### ・登録している配送先を一覧で確認することができる。
#### ・配送先の新規追加・修正・削除をすることができる。
### 12 注文履歴一覧表示機能
#### ・過去の注文概要を一覧で確認することができる。
### 13 注文履歴詳細表示機能
#### ・注文の詳細（注文商品や個数など）を確認することができる。

## 管理者
### 1 ログイン機能
#### ・メールアドレス、パスワードでログインできる。
#### ・ログイン時のみ利用できる機能が利用できるようになる。
### 2 ログアウト機能
#### ・ログインしている状態からログアウト状態にする。
#### ・ログイン時のみ利用できる機能が利用できなくなる。
### 3 注文履歴一覧表示機能
#### ・過去の注文概要を一覧で確認することができる。
### 4 注文履歴詳細表示機能
#### ・注文の詳細（注文商品や個数など）を確認することができる。
#### ・注文ステータス、製作ステータスを変更することができる。
### 5 顧客一覧表示機能
#### ・顧客情報を一覧で確認することができる。
#### ・検索結果を表示する場合は、検索条件に当てはまる顧客のみ一覧表示する。
### 6 顧客詳細情報表示機能
#### ・顧客の詳細情報を確認することができる。
#### ・顧客のステータス（有効/退会）を切り替えることができる。
### 7 商品一覧表示機能
#### ・登録商品を一覧で確認することができる。
#### ・検索結果を表示する場合は、検索条件に当てはまる商品のみ一覧表示する。
### 8 商品詳細情報表示機能
#### ・商品の詳細情報を確認することができる。
### 9 商品情報変更機能
#### ・商品の登録情報を変更することができる。
#### ・販売ステータスを変更することができる。
### 10 ジャンル設定機能
#### ・ジャンルの追加・変更を行うことができる。

# 環境
## 開発環境
### AWS Cloud 9 Linux release 2
### Ruby on Rails 6.1.7
### Ruby 3.1.2

# 導入手順

    $ git clone git@github.com:infratop-dreamgroup/nagano-cake.git
    $ cd nagano-cake
    $ rails db:seed
    $ rails db:migrate
    $ bundle install
    $ rails webpacker:install
    $ rails webpacker:compile
    
# 開発メンバー
### 岡本 宇弘
### 鈴木 彩永
### 中本 嘉乃
### 四村 陽樹




