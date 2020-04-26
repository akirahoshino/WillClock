# WillClockとは
- 目標達成をサポートするアプリです
  - 目標とその達成期限を管理するアプリです
  - 期限までの時間をカウントダウン表示します
  - 進捗などのメモを残せます


## 解決しようとする課題
- 到達したい目標までの時間がどれくらい残っているのか
- 目標はあるがなかなか危機感が持てない


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
![テーブル一覧](https://user-images.githubusercontent.com/61283814/80302636-25862e80-87e6-11ea-8448-01ad21194970.png)


## 使い方
- アカウント作成

## デモ
![デモ](https://user-images.githubusercontent.com/61283814/80284469-a6e3af80-8759-11ea-9958-d3f589c76e4c.gif)
