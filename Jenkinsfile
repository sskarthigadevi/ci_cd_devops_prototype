//Jenkins pipeline script

pipeline {
   agent any 
   environment {
        KUBECONFIG = 'C:/Users/harih/.kube/config' 
    }
  
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
                    withDockerRegistry([ credentialsId: 'dockerhub-credentials', url: '' ]) {
                        bat 'docker push karthigaadevi12/llama:latest'
                    }
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
                    bat 'kubectl rollout status deployment/llama-deployment'
                 }
             }
         }

    }
}
