pipeline {
  agent { dockerfile true }
  stages {

    stage('Copy from git') {
        steps{
            git(url: 'https://github.com/blacksails23/box1.git')
             }
             }
     stage('build war') {
        steps {
        sh 'mvn package'
              }
              }

    }
}