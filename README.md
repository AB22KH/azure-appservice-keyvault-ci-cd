# Azure App Service + Key Vault + CI/CD

This project sets up an Azure App Service and Azure Key Vault with Terraform and a full Azure DevOps CI/CD Pipeline.

## Features
- Azure App Service** for hosting web applications
- Azure Key Vault** for secure secrets management
- Multi-Environment Deployment (D, T, P)
- Automated CI/CD Pipelines** with Terraform

## 📁 Project Structure
```
azure-appservice-keyvault-ci-cd/
│── infra/                     # Terraform Infrastructure
│── modules/
│   ├── appservice/             # App Service Module
│   ├── keyvault/               # Key Vault Module
│── pipelines/                  # Azure DevOps Pipelines
│── README.md                   # Documentation
```

## Azure DevOps Integration
- Define your pipeline in `azure-pipelines.yml`
- Set up environment-based deployments using `terraform-template.yml`

- Deploy, Scale, and Manage Azure Resources with Ease!
