pipeline {
  agent { dockerfile true }
  stages {

    stage('Copy from git') {
        steps{
            sh 'cd /home/ubuntu'
            git(url: 'https://github.com/blacksails23/box1.git')
             }
             }
     stage('build war') {
        steps {
        sh 'mvn package'
              }
              }
     stage('make docker image'){
        steps{
          sh 'docker build --tag=build'
              }
              }

    }
}