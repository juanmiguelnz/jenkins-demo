pipeline {
    agent any
    environment {
        RELEASE='1.0'
    }
    stages {
        stage('Stage 1') {
            steps {
                echo "Agent Information: "
                sh 'ls -al'
                sh 'apt update'
            }
        }
        stage('Stage 2') {
            steps {
                writeFile file: 'test-results.txt', text: 'passed'
            }
        }
    }
    post {
        success {
            archiveArtifacts 'test-results.txt'
        }
    }
}