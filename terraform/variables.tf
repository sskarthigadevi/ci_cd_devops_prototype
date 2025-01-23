variable "kubernetes_cluster_name" {
  description = "Name of the Kubernetes cluster"
  type        = string
  default     = "llama-cluster"
}

variable "namespace" {
  description = "Namespace for deployment"
  type        = string
  default     = "llama-namespace"
}

variable "image_name" {
  description = "Docker image name for the application"
  type        = string
  default     = "<karthigaadevi12>/llama:latest"
}