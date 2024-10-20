# Django Ninja 練習用リポジトリ

Django Ninja は Django と FastAPI のいいとこ取りのようなフレームワーク  
Django のアプリケーションの概念が面倒なため、このリポジトリでは src/app ディレクトリ配下に全てを構築します

練習用リポジトリのため動作は保証しませんが、何かあれば連絡を受け付けます

## 中身

| やる事               | 使うもの                                                               |
| -------------------- | ---------------------------------------------------------------------- |
| フレームワーク       | [Django Ninja](https://django-ninja.dev/)                              |
| データベース         | PostgreSQL                                                             |
| 認証　               | [python-jose](https://python-jose.readthedocs.io/en/latest/) (JWT)     |
| ロギング             | [django-structlog](https://django-structlog.readthedocs.io/en/latest/) |
| パッケージ管理       | [Poetry](https://cocoatomo.github.io/poetry-ja/)                       |
| 型チェック           | [Pyright, Pylance](https://microsoft.github.io/pyright/#/)             |
| リント, フォーマット | [Ruff](https://docs.astral.sh/ruff/)                                   |
| タスクランナー       | [Taskfile](https://taskfile.dev/)                                      |

## やってみたこと

- ORM の使用, 簡単なリレーション
- グローバルレベルの例外ハンドリング
- 共通エラーの自動ドキュメント
- Pydantic のバリデーションエラーの日本語化

## 未着手

- デモレベルより上の DB 関連処理
- テストコード
- 適切なモジュール分割
- 実用的なロギング環境整備
- git hook の整備

## セットアップ

### Taskfile をインストール

```bash
brew install go-task/tap/go-task
```

### .env ファイルをコピー

```bash
task copy-env
```

### Docker コンテナの起動, マイグレーションの実行

💡 デフォルトは Podman を使用する設定になっている  
Docker を使用する場合は `taskfile.vars.yml` の `DOCKER` と `DOCKER_COMPOSE` を `docker` に変更する

```bash
task setup
```

### DevContainer を起動

VSCode の拡張機能を使う

### サーバー起動

コンテナ内で実行されるタスクはホストマシンからも同じコマンドで実行できる

```bash
task rs
```

### タスクコマンド一覧を見る

```bash
task --list
```
