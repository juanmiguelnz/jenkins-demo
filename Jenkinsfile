pipeline {
    agent any
    environment {
        RELEASE='1.0'
    }
    stages {
        stage('Stage 1') {
            steps {
                echo "Agent Information: "
                sh 'cat /etc/os-release'
            }
        }
        stage('Stage 2') {
            steps {
                sh 'apt update & sudo apt upgrade'
            }
        }
    }
}