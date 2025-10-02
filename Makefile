# Andomant Makefile - basic commands

.PHONY: all build run clean test docker

all: build

build:
	@echo "🔧 Building Andomant..."
	# Placeholder: add build commands for all languages/modules

run:
	@echo "🚀 Running Andomant..."
	# Placeholder: add run commands, e.g., src/main executable

test:
	@echo "🧪 Running tests..."
	# Placeholder: add test commands

clean:
	@echo "🧹 Cleaning..."
	# Placeholder: remove build artifacts

docker:
	@echo "🐳 Building Docker image..."
	docker build -t andomant:latest .

deploy-k8s:
	@echo "🌐 Deploying to Kubernetes cluster..."
	kubectl apply -f k8s/deployment.yaml
	kubectl apply -f k8s/service.yaml
