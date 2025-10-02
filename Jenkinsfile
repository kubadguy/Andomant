pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "andomant:latest"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/kubadguy/Andomant.git'
            }
        }

        stage('Build') {
            steps {
                echo "🔧 Building Andomant..."
                sh 'make build'
            }
        }

        stage('Test') {
            steps {
                echo "🧪 Running tests..."
                sh 'make test'
            }
        }

        stage('Docker Build') {
            steps {
                echo "🐳 Building Docker image..."
                sh 'make docker'
            }
        }

        stage('Deploy (Optional)') {
            steps {
                echo "🚀 Deploying to Kubernetes (placeholder)"
                // sh 'kubectl apply -f k8s/deployment.yaml'
                // sh 'kubectl apply -f k8s/service.yaml'
            }
        }
    }

    post {
        always {
            echo "Cleaning workspace..."
            cleanWs()
        }
        success {
            echo "✅ Pipeline completed successfully!"
        }
        failure {
            echo "❌ Pipeline failed!"
        }
    }
}
