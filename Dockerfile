# Andomant Dockerfile - basic multi-stage template
FROM ubuntu:22.04 AS base

# Set environment
ENV LANG=C.UTF-8
WORKDIR /app

# Install essentials
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    python3 \
    python3-pip \
    curl \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Copy project files
COPY . /app

# Placeholder: install dependencies
# RUN pip install -r requirements.txt
# RUN make build

# Default command
CMD ["echo", "Andomant container ready!"]
