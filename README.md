# uv template

## 中身

| やる事               | 使うもの                                                   |
| -------------------- | ---------------------------------------------------------- |
| パッケージ管理       | [uv](https://docs.astral.sh/uv/)                           |
| 型チェック           | [Pyright, Pylance](https://microsoft.github.io/pyright/#/) |
| リント, フォーマット | [Ruff](https://docs.astral.sh/ruff/)                       |
| タスクランナー       | [Taskfile](https://taskfile.dev/)                          |
| Git フック           | [lefthook](https://github.com/evilmartians/lefthook)       |

## セットアップ

### DevContainer を起動して Python のコンテナに入る

VSCode の拡張機能を使う

### タスクコマンド一覧を見る

```bash
task --list
```

コンテナ内で実行されるタスクはホストマシンからも同じコマンドで実行できる

## 本番イメージビルド

```bash
APP_ENV=prod docker compose build
```
