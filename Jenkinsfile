pipeline {
    agent any
    stages {
        stage ('Git Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jayamantya/pipeline.git']])
                echo "Checkout Succesful"
            }
        }
    }
}
