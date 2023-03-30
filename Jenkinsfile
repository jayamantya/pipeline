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
                    sh 'sudo docker build -t jayamantya/myhello-world .'
                }
            }
        }
        stage ('Push Docker Image to Docker Hub') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
                        sh 'sudo docker login -u jayamantya -p ${dockerhubpwd}'

                        sh 'sudo docker push jayamantya/myhello-world'
                    }
                }
            }
        }
    }
}
