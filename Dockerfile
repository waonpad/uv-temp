# Use a Python image with uv pre-installed
FROM ghcr.io/astral-sh/uv:python3.13-bookworm

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV UV_LINK_MODE=copy
# Use the system Python environment
ENV UV_PROJECT_ENVIRONMENT="/usr/local/"

# Install the Taskfile CLI.
RUN sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin

# Copy the application into the container.
COPY . /workspace

# Install the application dependencies.
WORKDIR /workspace
RUN uv sync --frozen --no-cache