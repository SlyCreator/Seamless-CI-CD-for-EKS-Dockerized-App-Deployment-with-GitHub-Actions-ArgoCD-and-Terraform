This repository contains a comprehensive guide and necessary scripts for deploying a Dockerized application using GitHub Actions, ArgoCD, Terraform, and Amazon EKS.

## Overview

We aim to automate application deployment using the combination of several tools:

- **GitHub Actions** for CI/CD pipelines
- **ArgoCD** for cluster synchronization
- **Terraform** for infrastructure management
- **Amazon EKS** for running scalable Kubernetes applications

## Prerequisites

- Docker
- AWS CLI
- Terraform
- EKS
- ArgoCD
- GitHub account

## Steps for deployment

1. Set up AWS resources using Terraform (VPC, EKS, ALB, and ArgoCD)
2. Prepare your application for deployment (Docker, Kubernetes manifests)
3. Set up GitHub Actions for CI - build Docker image and push it to ECR
4. Set up ArgoCD for CD - cluster synchronization
5. Push your changes to GitHub - triggers CI/CD pipeline

## Files in the repository

- **Terraform scripts** for setting up AWS resources
- **Kubernetes manifests** for deploying your application
- **GitHub Actions workflow file** for setting up CI/CD pipeline

## Running the scripts

Make sure you have all the prerequisites installed and properly configured. Follow the article to run the scripts and set up the deployment pipeline.

## Conclusion

This setup provides an automated, reliable, and efficient way to manage application lifecycles, offering streamlined operations, scalability, and enhanced productivity.

## References

Please refer to the original article for more detailed steps and explanations.

**Please note that this is a brief summary of the article and might not include all the details. Always refer to the original article for complete information.**