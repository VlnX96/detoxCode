pipeline {
    agent any
    environment {
            CI = 'true'
    }
    stages {
            stage('add yarn and install') {
            withEnv(['PATH+NODE=/usr/local/Cellar/node/16.6.1/bin']) {
                sh 'npm install -g yarn'
                sh 'yarn install'
            }
            }
    }
}
