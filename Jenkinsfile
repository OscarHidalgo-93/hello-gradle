pipeline {
    agent any

    options {
        ansiColor('xterm')
    }

    stages {
        stage('Build') {
            steps {
                 sh '''
                 ./gradlew assemble \
'''
            }
        }
        stage('Archive') {
            steps {
                echo 'Archivando..'
                archiveArtifacts artifacts: 'build/libs/*.jar'
            }
        }
        
        }
    }

