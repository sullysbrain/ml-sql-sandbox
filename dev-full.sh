#! /bin/bash

docker build -f .devcontainer/Dockerfile . -t my-analytics-image

# Live Bind Mount
docker run -it --mount type=bind,src="$(pwd)",target=/src --workdir /src my-analytics-image sh

# Copy to Production instead
# docker run -it --rm my-analytics-image sh
