#!/bin/bash -l

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
                sh 'npm install'
                sh 'npm install detox'
                sh 'detox --version'
            }
        }
    }
}
