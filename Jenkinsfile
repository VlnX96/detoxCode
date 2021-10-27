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
                sh './ios sudo pod install'
                sh './node_modules/.bin/detox build --configuration ios.sim.release'
                sh './node_modules/.bin/detox test --configuration ios.sim.release'
            }
        }
    }
}
