# Terraform - provision eks cluster

## Terraform learn
<img alt="Terraform" src="https://www.datocms-assets.com/2885/1629941242-logo-terraform-main.svg" width="600px">

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

Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing and popular service providers as well as custom in-house solutions.

The key features of Terraform are:

- **Infrastructure as Code**
- **Execution Plans**
- **Resource Graph**
- **Change Automation**

This repository explains how terraform provisions EKS cluster with all required AWS resources . For better understanding I used modularised terraform architecture.

## Getting Started & Documentation

### Connecting to AWS

Create AWS *Access Key* and *Secret Access Key* for your IAM user and download the credential file

Add the credentials (*Access Key* and *Secret Access Key*) in terraform module. We can give in different way , in a secure manner here it is directly fetching from the credentials file which is created upon AWS configure

Use your terminal console to connect aws using above credentials

```
$ aws configure
AWS Access Key ID [None]: **********
AWS Secret Access Key [None]: **********
Default region name [None]: ap-south-1
Default output format [None]:
```
Now the credential will be stored in  *~/.aws/credentials* . Use this file in your terraform module as below

```
provider "aws" {
  shared_credentials_file = "~/.aws/credentials"
  .........
}
```

### Modules

The entire configuration is split into 4 modules.

- **initialize-state-store**
- **configure-network**
- **configure-worker-nodes**
- **provision-eks**

### initialize-state-store

Terraform is stateful and by default it stores the state information's in the local directory as tfstate file (terraform.tfstate). If by mistake we delete the state file we will lose all the information and won't be able to update /destroy the resources . So we are using a permanent state file stored in the S3 bucket in our AWS account.

This module creates terraform state store in our AWS account. It contains

- An S3 bucket to store terraform state files
- A DynamoDB table for state lock.

This module has to be executed before running rest of terraform modules. Because it creates backend TF state store and which will be used for rest of terraform state transitions.


For executing this, please follow below steps.

```
git clone  https://github.com/kalarikkalbabu/terraform-provision-eks-cluster.git

cd terraform-provision-eks-cluster/initialize-state-store
```

Terraform execution
 ```
terraform init # this is where you initialize terraform modules and dependencies

terraform plan # this is where you review changes and choose whether to simply accept them.

terraform validate # this is where you validate your code against syntax and formats

terraform apply # this is where you accept changes and apply them against real infrastructure.

after all if you want to delete the resource run

terraform destroy

```

### Main terraform execution

After creating state store, go back to root and execute same terraform commands as above

*More module details will be updated in each modules soon*





