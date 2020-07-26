# 掲示板アプリ
### 投稿一覧画面
<img width="1439" alt="スクリーンショット 2020-07-26 12 38 58" src="https://user-images.githubusercontent.com/64763621/88471097-b5e82280-cf3f-11ea-9c7f-95c58dcf35be.png">

### 投稿詳細・レス画面
<img width="1440" alt="スクリーンショット 2020-07-26 12 45 14" src="https://user-images.githubusercontent.com/64763621/88471104-c5676b80-cf3f-11ea-8a2f-963cfe977cb7.png">

### ログイン画面
<img width="1440" alt="スクリーンショット 2020-07-26 12 19 49" src="https://user-images.githubusercontent.com/64763621/88471111-d31cf100-cf3f-11ea-9034-7d8834cf434c.png">

# 開発環境
- Ruby 2.5.1
- Rails 5.2.4.3
- MySQL

# 機能一覧
- ログイン機能 (email + pass)
- 閲覧・投稿機能
- スレッド機能
  - スレッドにレスをつけていくスタイル
  - レスに対してレスが出来る
- カテゴリ設定 
  - スレッドごと
  - 1つのスレッドに複数付与可能
  - タグを押すことで検索可能
  - gem acts-as-taggable-onを使用)
- 検索機能 
  - キーワード検索
  - スレッド及びスレッド内容のキーワード検索
  - gem ransackを使用

# DB設計
<img width="621" alt="スクリーンショット 2020-07-25 13 25 44 1" src="https://user-images.githubusercontent.com/64763621/88448965-131b9f80-ce7e-11ea-8fb8-9bb2ad2d60a7.png">
