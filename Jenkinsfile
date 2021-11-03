pipeline {
    agent { 
        dockerfile true 
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Install dependencies') {
             when {
                branch 'val'
            }
            steps {
                sh 'npm install'
                sh 'yarn install'
            }
        }
    }
}
