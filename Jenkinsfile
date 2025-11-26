pipeline {
    agent any
    
    environment {
        DOCKER_REGISTRY = 'mydockerregistry.com'
        IMAGE_NAME = 'test-devops'
    }
    
    stages {
        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'python3 test.py'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${IMAGE_NAME}:${BUILD_NUMBER}")
                }
            }
        }
        
        
    }
}
