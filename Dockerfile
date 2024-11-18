# 既にuvがインストールされているイメージをベースにする
FROM ghcr.io/astral-sh/uv:0.4.24-python3.13-bookworm

# 諸々の環境変数を設定
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV UV_LINK_MODE=copy

# venvを使わないようにする
ENV UV_PROJECT_ENVIRONMENT="/usr/local/"

# Taskfileをインストール
RUN sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin

# ルートディレクトリをそのままコピー
COPY . /workspace
# 作業ディレクトリをコピーしたディレクトリに変更
WORKDIR /workspace

# 依存関係をインストール
RUN uv sync --frozen --no-cache