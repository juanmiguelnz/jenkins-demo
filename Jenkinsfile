pipeline {
    agent any
    environment {
        AZ_TENANT = credentials('az_tenant')
        AZ_SUBSCRIPTION = credentials('az_subscription')
        AZ_USER = credentials('az_user')
        AZ_PASSWORD = credentials('az_password')
    }
    stages {
        stage('Stage 1') {
            steps {
                sh "hostname"
                sh "chmod +x $WORKSPACE/sample-script.sh"
                sh "az login --service-principal -u $AZ_USER -p $AZ_PASSWORD --tenant $AZ_TENANT"
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