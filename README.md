# uv template

## 中身

| やる事               | 使うもの                                                   |
| -------------------- | ---------------------------------------------------------- |
| パッケージ管理       | [uv](https://docs.astral.sh/uv/)                           |
| 型チェック           | [Pyright, Pylance](https://microsoft.github.io/pyright/#/) |
| リント, フォーマット | [Ruff](https://docs.astral.sh/ruff/)                       |
| タスクランナー       | [Taskfile](https://taskfile.dev/)                          |
| Git フック           | [lefthook](https://github.com/evilmartians/lefthook)       |
| デプロイ             | [Cloud Run](https://cloud.google.com/run)                  |

## セットアップ

### DevContainer を起動して Python のコンテナに入る

VSCode の拡張機能を使う

### タスクコマンド一覧を見る

```bash
task --list
```

コンテナ内で実行されるタスクはホストマシンからも同じコマンドで実行できる

## Cloud Run にデプロイ

[クイックスタート: Cloud Run に Python サービスをデプロイする  |  Cloud Run Documentation  |  Google Cloud](https://cloud.google.com/run/docs/quickstarts/build-and-deploy/deploy-python-service?hl=ja)

**デプロイが行える状態まで事前に準備しておく**

```bash
gcloud run deploy --source . --port=8000 --region asia-northeast1 --allow-unauthenticated
```

サービス名を実行時に指定する場合は `--service` オプションを使う

TDOO: 環境変数等のデプロイ手順

### リソースの削除

[Cloud Run サービス内の gcloud コマンドラインのチュートリアル  |  Cloud Run Documentation  |  Google Cloud](https://cloud.google.com/run/docs/tutorials/gcloud?hl=ja#delete-resources)

```bash
gcloud run services delete <サービス名> --region asia-northeast1
```
