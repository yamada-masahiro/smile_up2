# README

## SMILE-UP. について

記者会見において指名するのが望ましい記者とそうでない記者の氏名、所属、顔写真を登録して、一目で見やすい「NGリスト」を作成するシステムです。

## このアプリケーションを起動する方法

### macOSの場合

#### 前提条件

- ruby 3.2.2 (2023-03-30 revision e51014f9c0) [arm64-darwin23]
- Rails 7.1.2
- mysql  Ver 8.2.0 for macos14.0 on arm64 (Homebrew)

#### DB作成

``` shell
  # MySQL サービスを起動する
  brew services start mysql
  # DB を作成する
  rails db:create
```

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* ✓ Ruby version

* ✓ System dependencies

* Configuration

* ✓ Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
