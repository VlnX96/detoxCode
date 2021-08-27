node('testing') {
    stage('Initialize') {
        echo 'Initializing...'
        def node = tool name: 'Node-7.20.3', type: 'jenkins.plugins.nodejs.tools.NodeJSInstallation'
        env.PATH = "${node}/bin:${env.PATH}"
    }

    stage('Checkout') {
        echo 'Getting source code...'
        checkout scm
    }

    stage('Build') {
        echo 'Building dependencies...'
        sh 'npm install'
    }
}
