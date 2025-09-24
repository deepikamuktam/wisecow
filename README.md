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

