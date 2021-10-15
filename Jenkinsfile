pipeline {
    agent any
    environment {
        RELEASE='1.0'
    }
    stages {
        stage('Stage 1') {
            steps {
                echo "This is release version $RELEASE"
                sh 'cat /etc/os-release'
            }
        }
        stage('Stage 2') {
            steps {
                echo  'Hello from Stage 2'
            }
        }
    }
}