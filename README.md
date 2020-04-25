# WillClockとは
- 目標とその達成期限を管理するアプリです
- 期限までの時間をカウントダウン表示します
- 進捗などのメモを残せます


## 解決しようとする課題
- 到達したい目標までの時間がどれくらい残っているのか
- 残り時間から危機感を持てるようにする


## 開発環境
- AWS Cloud9
- Rails 6.0.2.1
- psql (9.5.15)

## 機能一覧
- ユーザー登録
  - ログイン
  - ログアウト
  - ログイン状態の表示
- 目標(Goal)管理 
　- 目標の一覧表示
   - 残り日数の表示
  - 目標の追加
  - 目標の編集・更新
  - 目標の削除
- メモ（task）管理
  - 目標の期日までのカウントダウンを表示
  - メモの一覧表示
  - メモの追加
  - メモの編集・更新
  - メモの削除
- カウントダウン表示
  - 期日を過ぎたものは”終了”と表示
  - 日時分秒 表示
 
 ## テーブル一覧
 ![テーブル一覧](https://user-images.githubusercontent.com/61283814/80273898-403aa380-8711-11ea-87d8-431da1466e71.png)

## 使い方
- アカウント作成
