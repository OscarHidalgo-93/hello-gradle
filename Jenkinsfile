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
        
        post{
            success{
                echo 'Archivando...'
                archiveArtifacts artifacts: 'build/libs/*.jar'
            }
             }
        }
        stage('Archive') {
            steps {
                
                echo 'Se arcivó el artefacto...'
            }
        }
        
        }
}
    
   

