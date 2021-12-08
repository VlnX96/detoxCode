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
                sh 'ruby -v'
                sh 'node -v'
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
