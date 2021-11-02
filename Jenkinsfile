pipeline {
    agent { 
        dockerfile true 
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Install dependencies') {
            steps {
                sh "npm install"
            }
        }
    }
}
