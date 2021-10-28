#!/usr/bin/env bash
source ~/.bash_profile
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
                sh 'npm install'
                sh 'cd ios'
                sh 'pod install'
                sh 'cd ..'
            }
        }
    }
}
