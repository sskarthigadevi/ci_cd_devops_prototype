// 4. Jenkins Pipeline Script (Jenkinsfile)

pipeline {
    agent any
  
    stages {
        stage('Checkout SCM') {
            steps {
                git branch: 'main', url: 'https://github.com/sskarthigadevi/ci_cd_devops_prototype.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    bat 'docker build -t llama:latest .'
                }
            }
        }
        stage('Push to DockerHub') {
            steps {
                script {
                    bat 'docker push llama:latest'
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                script {
                    bat 'kubectl apply -f deployment.yaml'
                    bat 'kubectl apply -f service.yaml'
                }
            }
        }
        stage('Verify Deployment') {
            steps {
                script {
                    bat 'kubectl rollout status deployment/my-deployment'
                }
            }
        }
    }
}
