// 4. Jenkins Pipeline Script (Jenkinsfile)

pipeline {
    agent any
    environment {
        KUBECONFIG = credentials('kubernetes')  // reference the ID of the kubeconfig credential
    }
    stages {
        stage('Checkout SCM') {
            steps {
                git 'https://github.com/sskarthigadevi/ci_cd_devops_prototype.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t my-image .'
                }
            }
        }
        stage('Push to DockerHub') {
            steps {
                script {
                    sh 'docker push my-image'
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                script {
                    sh 'kubectl apply -f deployment.yaml'
                    sh 'kubectl apply -f service.yaml'
                }
            }
        }
        stage('Verify Deployment') {
            steps {
                script {
                    sh 'kubectl rollout status deployment/my-deployment'
                }
            }
        }
    }
}
