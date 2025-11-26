pipeline {
    agent {
        docker {
            image 'python:3.9'
        }
    }
    
    environment {
        DOCKER_REGISTRY = 'mydockerregistry.com'
        IMAGE_NAME = 'test-devops'
    }
    
    stages {
        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'python app.py'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${IMAGE_NAME}:${BUILD_NUMBER}")
                }
            }
        }
        
        stage('Push to Docker Registry') {
            steps {
                script {
                    docker.withRegistry("https://${DOCKER_REGISTRY}", 'docker-credentials') {
                        docker.image("${IMAGE_NAME}:${BUILD_NUMBER}").push()
                }
            }
        }
    }
}
