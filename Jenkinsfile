// 4. Jenkins Pipeline Script (Jenkinsfile)

pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/sskarthigadevi/ci_cd_devops_prototype.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t karthigaadevi12/llama:latest .'
            }
        }
        stage('Push to DockerHub') {
            steps {
                withDockerRegistry([credentialsId: 'dockerhub-credentials', url: '']) {
                    bat 'docker push karthigaadevi12/llama:latest'
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                bat 'kubectl apply -f deployment.yaml'
                bat 'kubectl apply -f service.yaml'
            }
        }
        stage('Verify Deployment') {
            steps {
                bat 'kubectl get pods -n llama-namespace'
                bat 'kubectl get svc -n llama-namespace'
            }    
        }
    }
    post {
        failure {
            echo "Pipeline failed! Check logs for details."
        }
        success {
            echo "Pipeline completed successfully!"
        }
    }
}
