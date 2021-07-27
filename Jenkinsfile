pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh sh '''docker-compose build
docker image tag app:latest hello-gladle:MAIN-1.0.${BUILD_NUMBER}-${GIT_COMMIT}
'''
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh '''docker-compose up -d'''
            }
        }
    }
}
