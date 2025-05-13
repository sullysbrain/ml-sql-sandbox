
# Debian 12, Linux 6.1, Python 3.12
FROM python:3.12-slim-bookworm AS base
# FROM ubuntu:noble AS build

#Change shell to sh for small size and set debug options
SHELL ["sh", "-exc"]

# ARG PYTHON_ENV=my_env
# ENV PYTHON_ENV=$PYTHON_ENV

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

COPY --from=ghcr.io/astral-sh/uv:0.6.1 /uv /uvx /bin/
ENV UV_LINK_MODE=copy


### FOR DEV
# RUN --mount=type=cache,target=/root/.cache/uv \
#     --mount=type=bind,source=uv.lock,target=uv.lock \
#     --mount=type=bind,source=pyproject.toml,target=pyproject.toml \
#     uv sync --frozen --no-install-project --no-dev --no-editable


# Add dependency cache
# COPY pyproject.toml uv.lock ./
# RUN uv pip sync --system pyproject.toml


# RUN uv pip install -r pyproject.toml --system

# Now copy the actual project
# COPY src .




# FOR PRODUCTION
# Copy dependency metadata
# COPY pyproject.toml uv.lock ./
# RUN uv pip sync --system pyproject.toml

# # Copy application source
# COPY src/ ./src

# # Optional entrypoint for fastapi, jupyter, etc.
# CMD ["python", "src/main.py"]
