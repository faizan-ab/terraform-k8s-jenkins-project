## 🚀 Terraform + Jenkins + Kubernetes (EKS) CI/CD Pipeline

![Terraform](https://img.shields.io/badge/Terraform-IaC-blueviolet)
![AWS](https://img.shields.io/badge/AWS-EKS-orange)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-blue)
![Jenkins](https://img.shields.io/badge/Jenkins-CI/CD-red)
![Status](https://img.shields.io/badge/Project-Completed-success)

---

# 📌 Project Overview

This project demonstrates a Kubernetes application using Jenkins for CI-CD pipeline, EKS for automated cluster configuration, and terraform for provisioning of the infrastructure.

The pipeline automatically:

1. Provisions AWS infrastructure using Terraform
2. Creates an EKS cluster
3. Deploys an Nginx application to Kubernetes
4. Exposes the application using an AWS LoadBalancer

---

# 🏗 Architecture

```
Developer
    │
    │ Git Push
    ▼
GitHub Repository
    │
    ▼
Jenkins CI/CD Pipeline
    │
    │ Terraform
    ▼
AWS Infrastructure
(VPC + Subnets + Security Groups)
    │
    ▼
Amazon EKS Cluster
    │
    ▼
Kubernetes Deployment
(Nginx Pod)
    │
    ▼
Kubernetes Service
(Type: LoadBalancer)
    │
    ▼
AWS Elastic LoadBalancer
    │
    ▼
Internet
    │
    ▼
End User
```

---

# ⚙️ Tech Stack

| Tool       | Purpose                    |
| ---------- | -------------------------- |
| AWS        | Cloud infrastructure       |
| Terraform  | Infrastructure as Code     |
| Jenkins    | CI/CD pipeline             |
| Kubernetes | Container orchestration    |
| Amazon EKS | Managed Kubernetes cluster |
| GitHub     | Source code management     |
| Nginx      | Sample application         |

---

# 📂 Project Structure

```
terraform-k8s-jenkins-project
│
├── Jenkinsfile
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── vpc.tf
├── server.tf
├── route.tf
├── security.tf
├── backend.tf
│
├── eks-cluster/
│
├── screenshots/
│   ├── jenkins-pipeline-success.png
│   ├── terraform-apply.png
│   ├── k8s-nodes.png
│   ├── k8s-pods.png
│   ├── k8s-service.png
│   └── nginx-app.png
│
└── README.md
```

---

# 🔄 CI/CD Pipeline Flow

### 1️⃣ Code Push

Developer pushes code to GitHub.

```
git push origin main
```

---

### 2️⃣ Jenkins Pipeline Trigger

Jenkins automatically triggers the pipeline.

Pipeline stages:

```
Checkout SCM
Create EKS Cluster
Deploy to Kubernetes
```

---

### 3️⃣ Terraform Infrastructure Provisioning

Terraform provisions AWS resources:

* VPC
* Subnets
* Internet Gateway
* Route Tables
* Security Groups
* EC2 Instance (Jenkins Server)
* EKS Cluster
* Node Groups

Example command:

```
terraform init
terraform plan
terraform apply
```

---

### 4️⃣ Kubernetes Deployment

Application deployed to Kubernetes.

```
kubectl get nodes
kubectl get pods
kubectl get svc
```

---

# 📊 Jenkins Pipeline Execution

![Jenkins Pipeline](screenshots/jenkins-pipeline-success.png)

---

# ☸ Kubernetes Cluster

### Nodes

![Nodes](screenshots/k8s-nodes.png)

---

### Pods

![Pods](screenshots/k8s-pods.png)

---

### Services

![Service](screenshots/k8s-service.png)

---

# 🌐 Application Output

The Nginx application is exposed via AWS LoadBalancer.

![Nginx](screenshots/nginx-app.png)

---

# 🧠 Key Learnings

This project demonstrates:

* Infrastructure provisioning with **Terraform**
* Automated deployment with **Jenkins CI/CD**
* Running applications on **AWS EKS**
* Managing workloads with **Kubernetes**
* Exposing services using **AWS LoadBalancer**
* Troubleshooting **subnet tagging issues for ELB**

---

# 🧹 Clean Up

To avoid AWS billing, destroy the infrastructure after testing.

```
terraform destroy
```

---

# 👨‍💻 Author

**Faizan**

DevOps & Cloud Enthusiast

