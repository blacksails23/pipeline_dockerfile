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
     stage('docker build') {
        steps {
        sh 'cp /home/black1/pipeline_dockerfile/Dockerfile.1 /var/lib/jenkins/workspace/target'
        sh 'docker build -f Dockerfile.1 -t api:v1 /var/lib/jenkins/workspace/test1/target'
        sh 'docker push blacksail23/homework:v1'
        }
        }
     stage ('run docker') {
        steps {
        sh '''ssh root@srv02 << EOF
        cd /home/black2
        docker pull blacksail23/homework:v1
        docker run -d -p 8080:8080 v1
        EOF'''
        }
     }
    }
}