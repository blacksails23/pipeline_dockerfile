pipeline {
  agent { dockerfile true }
  stages {
     stage('docker build') {
        steps {
         sh 'docker build *'
        }

     }
  }
  triggers {
    pollSCM('*/1 H * * *')
  }
}