#!/usr/bin/env bash
pipeline {
    agent {
        docker {
            image 'node:14-alpine'
            args '-p 3000:3000'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Install dependencies') {
            steps {
                sh 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)'
                sh 'brew install cocoapods'
                sh 'npm install'
            }
        }
    }
}
