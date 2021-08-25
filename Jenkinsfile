pipeline {
    agent any
    environment {
            CI = 'true'
    }
    stages {
        withEnv(['PATH+NODE=/usr/local/Cellar/node/16.6.1/bin']) {
            stage('add yarn and install') {
                sh 'npm install -g yarn'
                sh 'yarn install'
            }
        }
    }
}
