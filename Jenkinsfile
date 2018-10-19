pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'make project-workspace'
                sh 'make install'
            }
        }
        stage('Test') {
            steps {
                sh 'make start'
                sh 'make curl'
            }
        }
        stage('Deploy') {
            steps {
                sh 'make release'
                sh 'deploy.ghpages'
            }
        }
    }
}