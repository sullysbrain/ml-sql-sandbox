
# Debian 12, Linux 6.1, Python 3.12
FROM python:3.12-slim-bookworm AS base
# FROM ubuntu:noble AS build

#Change shell to sh for small size and set debug options
SHELL ["sh", "-exc"]

WORKDIR /app

# Ensure apt-get doesn't open a menu on you.
ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    UV_PROJECT_ENVIRONMENT=/usr/local
    
### Start build prep.
### This should be a separate build container for better reuse.
RUN apt-get update && apt-get install --no-install-recommends -y \
    curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
    # && useradd -m -s /bin/bash $USER

COPY --from=ghcr.io/astral-sh/uv:0.5.5 /uv /uvx /bin/

# Add dependency cache
COPY ./pyproject.toml ./uv.lock ./
RUN uv pip install -r pyproject.toml --system

# Now copy the actual project
COPY src .

