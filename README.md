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

### Taskfile をインストール

taskfile の設定ファイルを見て手動で実行するのであれば不要

```bash
brew install go-task/tap/go-task
```

### lefthook をインストール

DevContainer の中でしか作業しない場合は不要

```bash
brew install lefthook && lefthook install
```

### .env ファイルをコピー

```bash
task copy-env
```

### Docker コンテナの起動

💡 デフォルトは Docker を使用する設定になっている  
Podman を使用する場合は `taskfile.vars.yml` の `DOCKER` と `DOCKER_COMPOSE` を `podman` に変更する

```bash
task setup
```

### DevContainer を起動

VSCode の拡張機能を使う

### タスクコマンド一覧を見る

```bash
task --list
```

コンテナ内で実行されるタスクはホストマシンからも同じコマンドで実行できる
