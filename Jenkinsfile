pipeline {
     agent any
    environment {
            CI = 'true'
    }
    stages {
        stage('yarn install') {
            steps {
                sh 'npm install'
            }
        }
    }
}
