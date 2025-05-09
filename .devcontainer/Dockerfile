
# Debian 12, Linux 6.1, Python 3.12
FROM python:3.12-slim-bookworm AS base
# FROM --platform=linux/amd64 python:3.12-slim-bookworm AS base

WORKDIR /app

FROM base AS builder
# 2. Install system-level packages (zsh, ODBC drivers, etc.)
RUN apt-get update && \
    apt-get install -y --no-install-recommends zsh && \
    rm -rf /var/lib/apt/lists/*
    

# Optional: set zsh as the default shell
SHELL ["/bin/zsh", "-c"]

# Optional: set the CMD to start zsh by default
CMD ["zsh"]


COPY --from=ghcr.io/astral-sh/uv:0.4.9 /uv /bin/uv
# RUN curl -sSf https://install.astral.sh | sh
# COPY pyproject.toml uv.lock ./
# ENV UV_LINK_MODE=copy
# RUN uv pip sync --system

