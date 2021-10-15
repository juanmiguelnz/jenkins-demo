pipeline {
    agent any
    environment {
        RELEASE='1.0'
    }
    stages {
        stage('Stage 1') {
            steps {
                sh "chmod +x $WORKSPACE/sample-script.sh"
                sh "sudo $WORKSPACE/sample-script.sh"
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