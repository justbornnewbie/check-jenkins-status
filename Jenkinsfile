pipeline {
    agent {
        label "worker1"
    }
    stages {
        stage ("check-jenkins-status"){
            steps {
                sh '''
                pwd
                ./check-jenkins.status.sh
                '''
            }
        }
    }
}