pipeline {
    agent {
        label 'reactNative'
    }
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
