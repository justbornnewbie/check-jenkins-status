pipeline {
    agent {
        label "worker1"
    }
    stages {
        stage ("check-jenkins-status"){
            steps {
                sh '''
                chmod +x check-jenkins.status.sh
                ./check-jenkins.status.sh jenkins
                '''
            }
        }
    }
}