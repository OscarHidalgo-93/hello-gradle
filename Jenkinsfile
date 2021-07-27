pipeline {
    agent any

    options {
        ansiColor('xterm')
    }

    stages {
        stage('Build') {
            steps {
                echo 'Buildeando...'
                withGradle {
    // some block
    sh '''
                 ./gradlew assemble \
       '''
}
                 
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

