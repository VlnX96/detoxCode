pipeline {    
    agent { docker { image 'node:14-alpine' } }
    environment {
            CI = 'true'
    }
    stages {
        stage('yarn install') {
            steps {
                sh 'yarn install'
            }
        }
    }
}
