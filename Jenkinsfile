pipeline {
    agent any
    stages {
        stage ('Git Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jayamantya/pipeline.git']])
                echo "Checkout Succesful"
            }
        }
        stage ('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t jayamantya/myubuntuimage'
                }
            }
        }
    }
}
