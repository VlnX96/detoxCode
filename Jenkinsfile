
pipeline {
    agent {
        docker {
            image 'node:14-alpine'
            args '-p 3000:3000'
        }
    }
    environment {
        HOME = '.'
        PATH = '$PATH:/usr/local/bin'
    }
    stages {
        stage('Install dependencies') {
            steps {
                sh 'npm install yarn'
                sh 'yarn install'
            }
        }
        stage('Install Homebrew') {
            steps {
                /* groovylint-disable-next-line GStringExpressionWithinString */
                sh 'brew update && brew install node'
            }
        }
    }
}
