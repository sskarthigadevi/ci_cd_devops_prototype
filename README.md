# CI/CD DevOps Prototype
This project demonstrates a CI/CD pipeline for deploying a Python application using modern DevOps tools.

## Project Structure
```
ci_cd_devops_prototype/
├── Dockerfile               # Docker configuration for containerizing the application
├── Jenkinsfile              # Jenkins CI/CD pipeline configuration
├── deployment.yaml          # Kubernetes deployment configuration
├── service.yaml             # Kubernetes service configuration
├── llama.py                 # Python application source code
├── requirements.txt         # Python dependencies
├── test_llama.py            # Automated test cases
├── terraform/               # Infrastructure as Code (Terraform)
│   ├── main.tf              # Terraform configuration file
│   └── variables.tf         # Terraform variables
```

## Execution Steps

### Step 1: Clone the Repository
```bash
git clone https://github.com/sskarthigadevi/ci_cd_devops_prototype.git
cd ci_cd_devops_prototype
```

### Step 2: Install Dependencies
Install Python dependencies for the application:
```bash
pip install -r requirements.txt
```

### Step 3: Run the Application Locally
Start the Streamlit application:
```bash
streamlit run llama.py
```

### Step 4: Dockerize the Application
Build and run the Docker container:
```bash
# Build Docker image
docker buildx build -t karthigaadevi12/llama:latest .

# Run Docker container
docker run -p 8501:8501 karthigaadevi12/llama:latest
```

### Step 5: Deploy to Kubernetes
Deploy the application to Kubernetes:
```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```
Retrieve the external IP:
```bash
kubectl get svc llama-service
```

### Step 6: CI/CD Pipeline with Jenkins
1. Configure Jenkins with the provided `Jenkinsfile`.
2. Set up credentials for DockerHub and Kubernetes.
3. Trigger a build to automate the process.

### Step 7: Automated Testing
Run tests with pytest:
```bash
pytest test_llama.py
```

### Step 8: Infrastructure as Code (Terraform)
Provision resources with Terraform:
```bash
cd terraform
terraform init
terraform apply
```

### Notes
- Ensure Kubernetes and Docker are properly configured.
- ![image](https://github.com/user-attachments/assets/9d614703-db01-415c-972a-5954ea4faffe)
- ![image](https://github.com/user-attachments/assets/52f2ed79-c0ee-4d20-883a-cab6fa83959d)
- ![image](https://github.com/user-attachments/assets/3a86b773-eaba-4d77-8882-94f85d3c342a)



