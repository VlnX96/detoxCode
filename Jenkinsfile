#!/usr/bin/env bash
pipeline {
    agent {
        docker {
            image 'starefossen/ruby-node:latest'
            args '-p 3000:3000'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Install dependencies') {
            steps {
                sh 'rvm install ruby@latest'
                sh '/bin/bash -c \\"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)\\"'
            }
        }
    }
}


// pipeline {
//     agent { dockerfile true }
//     }
//     environment {
//         CI = 'true'
//     }
//     stages {
//         stage('Install dependencies') {
//             steps {
//                sh "npm install"
//             }
//         }
//     }
// }
