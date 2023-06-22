# Terraform - provision eks cluster

## Terraform learn
- Terraform: https://www.terraform.io
- Documentation: [https://www.terraform.io/docs/](https://www.terraform.io/docs/)
- Tutorials: [HashiCorp's Learn Platform](https://learn.hashicorp.com/terraform)

## Kubernetes learn
- Kubernetes: https://kubernetes.io/
- Documentation: [https://kubernetes.io/docs/home/](https://kubernetes.io/docs/home/)
- Tutorials: [Learn Kubernetes Basics](https://kubernetes.io/docs/tutorials/kubernetes-basics/)

## AWS EKS learn
- Kubernetes: https://aws.amazon.com/eks/
- Documentation: [Amazon Elastic Kubernetes Service Documentation](https://docs.aws.amazon.com/eks/?icmpid=docs_homepage_containers)
- Tutorials: [Getting started with Amazon EKS](https://aws.amazon.com/eks/getting-started/)

<img alt="Terraform" src="https://www.datocms-assets.com/2885/1629941242-logo-terraform-main.svg" width="600px">

Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing and popular service providers as well as custom in-house solutions.

The key features of Terraform are:

- **Infrastructure as Code**
- **Execution Plans**
- **Resource Graph**
- **Change Automation**

This repository explains how terraform provisions EKS cluster with all required AWS resources . For better understandability I used modularised terraform architecture.

## Getting Started & Documentation

There is four terraform modules used, they are:

- **initialize-state-store**
- **configure-network**
- **configure-worker-nodes**
- **provision-eks**

## initialize-state-store

This module used to create terraform state store. It creates

- An S3 bucket to store terraform state files
- A DynamoDB table for state lock.

This module has to be provisioned before starting rest of terraform execution.

For executing this, please follow below steps.

