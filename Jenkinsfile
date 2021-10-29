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
                sh 'gem install cocoapods'
                sh 'npm install'
            }
        }
    }
}
