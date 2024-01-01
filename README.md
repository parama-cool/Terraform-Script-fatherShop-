*****Terraform-Script-fatherShop*****

# Assignment - Evaluate DevOps Skills in Terraform, EKS, ECR, AWS Systems Manager (SSM), Load Balancing, Amazon S3, Memcached, and Redis Integration

# Infrastructure Overview

  -> VPC and Subnets
  -> EKS Cluster
  -> ECR Repository
  -> S3 Bucket
  -> Load Balancing (ALB)

# Deployment Steps

  -> Prerequisites
  -> Terraform Initialization
  -> Terraform Plan
  -> Terraform Apply

# Prerequisites
  -> AWS CLI installed and configured
  -> Terraform installed
  -> AWS IAM credentials with appropriate permissions

#  Infrastructure Overview
  -> VPC and Subnets
  
       The script creates a Virtual Private Cloud (VPC) with a public subnet for hosting EKS worker nodes.

  -> EKS Cluster
  
       The Amazon EKS cluster is deployed to manage Kubernetes environments efficiently.

  -> ECR Repository
  
       An Elastic Container Registry (ECR) repository named "wordpress" is created for storing Docker images.

  -> S3 Bucket
  
       An S3 bucket named "devops-media" is established for storing media assets.

  -> Load Balancing (ALB)
  
       An Application Load Balancer (ALB) named "wordpress-lb" is configured to distribute traffic.

#  Security Considerations
   -> IAM Roles and Policies
   
      Ensure IAM roles and policies follow the principle of least privilege. 
      
   -> Network Security
   
      Implement network security practices such as VPC configurations and security groups.

# Variables File
  -> Configuration Reusability. Terraform variables enable you to reuse configurations across different environments or projects.

# Output File
  -> Terraform output values let you export structured data about your resources.
  
#  Deployment Steps
  -> Prerequisites
  
      Ensure AWS CLI, Terraform, and IAM credentials are set up.

  -> Terraform Initialization
  
      Run terraform init to initialize the working directory.

  -> Terraform Plan
  
      Execute terraform plan to review the changes that Terraform will make.

  -> Terraform Apply
  
      Deploy the environment using terraform apply. Confirm changes when prompted.
