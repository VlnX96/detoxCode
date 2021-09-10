
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
        stage('Install Pods') {
            steps {
                sh 'cd ios; pod install; cd ..'
            }
        }
        stage('Build Detox') {
            steps {
                sh 'detox build --configuration ios.sim.release'
            }
        }
        stage('Run Detox') {
            steps {
                sh 'detox test --configuration ios.sim.release'
            }
        }
    }
}
