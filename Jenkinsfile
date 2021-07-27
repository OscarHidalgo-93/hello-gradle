pipeline {
    agent any

    options {
        ansiColor('xterm')
    }

    stages {
        stage('Build') {
            steps {
                 sh '''docker-compose build
docker image tag hello-gradle:latest hello-gradle:MAIN-1.0.${BUILD_NUMBER}-${GIT_COMMIT}
'''
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                echo '\033[34mHello\033[0m \033[33mcolorful\033[0m \033[35mworld!\033[0m'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh 'docker-compose up -d'
            }
        }
    }
}
