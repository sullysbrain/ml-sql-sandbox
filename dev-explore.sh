#! /bin/bash

# compile the requirements.txt file to a pip-compile compatible format
uv pip compile requirements.pylock -o pylock.toml

uv pip sync pylock.toml



# Build image and run in detached mode
# up builds, (re)creates, starts, and attaches to containers for a service
# docker-compose up -d --build
# -d runs in detached mode
docker-compose up -d --build exploration



# Run
# -t allocates a pseudo-TTY
# -i keeps STDIN open even if not attached
docker exec -it exploration sh
