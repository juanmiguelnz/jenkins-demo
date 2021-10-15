pipeline {
    agent any
    stages {
        stage('Stage 1') {
            steps {
                echo 'Listing directory...'
                sh 'ls -al'
            }
        }
        stage('Stage 2') {
            steps {
                echo  'Hello from Stage 2'
            }
        }
    }
}