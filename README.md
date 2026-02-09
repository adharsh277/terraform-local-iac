# terraform-local-iac
# Terraform Local Infrastructure (Docker + Nginx + Redis)

## 📌 Project Overview

This project demonstrates **Infrastructure as Code (IaC)** using Terraform to provision local Docker containers without using any cloud services.
Terraform automatically pulls images and runs Nginx and Redis containers, creating a reproducible development environment.

---

## ⚙️ Tech Stack

* Terraform
* Docker
* Nginx
* Redis
* GitHub Actions (CI validation)

---

## 🏗️ How It Works

* Terraform uses the **Docker provider** to manage containers as infrastructure.
* When `terraform apply` runs:

  * Nginx image is pulled and exposed on port **8080**
  * Redis image is pulled and exposed on port **6379**
* Terraform tracks everything in the state file, so the environment can be recreated anytime.

---

## 🚀 How to Run

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

After deployment:

* Open Nginx → [http://localhost:8080](http://localhost:8080)
* Redis runs on port 6379

---

## 🔎 Validation

Check running containers:

```bash
docker ps
terraform state list
```

---

## 🔄 CI Automation

GitHub Actions runs:

* terraform fmt
* terraform validate

This ensures infrastructure code quality on every push.

---

## 🎯 What This Project Demonstrates

* Infrastructure as Code principles
* Local reproducible environments
* Terraform state management
* Basic CI integration for DevOps workflows
