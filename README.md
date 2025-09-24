# 🐮 Wisecow Application on Kubernetes

This project demonstrates the **containerization, deployment, and CI/CD pipeline** for the Wisecow application.  

---

## 📌 Problem Statement
- Containerize the Wisecow application using Docker.
- Deploy the app in a Kubernetes cluster (Minikube, Kind, or Play with Kubernetes).
- Expose it as a Kubernetes Service.
- Implement CI/CD with GitHub Actions to build & push Docker images automatically.
- [Challenge Goal] Enable TLS communication for the Wisecow app.

---

## 🛠️ Steps Implemented

### 1. Dockerization
- Created a `Dockerfile` for the Wisecow application.
- Built the image locally and tested:
  ```bash
  docker build -t wisecow:local .
  docker run --rm -p 4499:4499 wisecow:local
  curl http://localhost:4499/

 -- docker tag wisecow:local <your-dockerhub-username>/wisecow:latest
 -- docker push <your-dockerhub-username>/wisecow:latest

### 2. Kubernetes Deployment
-kubectl apply -f wisecow.yaml
  kubectl get pods
  kubectl get svc wisecow-service

### 3. CI/CD Pipeline

-Configured GitHub Actions workflow (.github/workflows/ci.yml):

-On each push to main:

-Build Docker image.

-Push to Docker Hub.

## Secrets used:

 -- DOCKERHUB_USERNAME

 -- DOCKERHUB_TOKEN




