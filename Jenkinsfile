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
                sh "chmod +x $WORKSPACE/sample-script.sh"
                sh "az login --service-principal -u $AZ_USER -p $AZ_PASSWORD --tenant 6dc416ce-c43d-4371-b1cc-186d73f88d5e"
            }
        }
        stage('Stage 2') {
            steps {
                sh "./sample-script.sh"
            }
        }
    }
    post {
        success {
            archiveArtifacts 'test-results.txt'
        }
    }
}