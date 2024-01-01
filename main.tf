provider "aws" {
  region = "ap-south-1" 
}

# Create VPC
resource "aws_vpc" "devops_vpc" {
  cidr_block          = "10.0.0.0/16"
  enable_dns_support  = true
  enable_dns_hostnames = true
}

# Create Subnets
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.devops_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-west-2a"
  map_public_ip = true
}

# Create EKS Cluster
module "eks_cluster" {
  source = "terraform-aws-modules/eks/aws"

  cluster_name = "devops-cluster"
  subnets      = [aws_subnet.public_subnet.id]

}

# Create RDS MySQL Database
resource "aws_db_instance" "mysql" {
  engine            = "mysql"
  instance_class    = "db.t2.micro"
  name              = "wordpress-db"
  username          = "admin"
  password          = "1234567"
  allocated_storage = 20
  publicly_accessible = true 
}

# Create ECR Repository
resource "aws_ecr_repository" "wordpress_repo" {
  name = "wordpress"
}

# Create Elasticache Memcached Cluster
resource "aws_elasticache_cluster" "memcached" {
  cluster_id = "devops-memcached"
  engine     = "memcached"
  node_type  = "cache.t2.micro"
  num_nodes  = 1
}

# Create Redis Cluster
resource "aws_elasticache_cluster" "redis" {
  cluster_id = "devops-redis"
  engine     = "redis"
  node_type  = "cache.t2.micro"
  num_nodes  = 1
}

# Create S3 Bucket for Media Storage
resource "aws_s3_bucket" "media_bucket" {
  bucket = "devops-media"
  acl    = "private" 
}

# Load Balancing (ALB)
resource "aws_lb" "wordpress_lb" {
  name               = "wordpress-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb_sg.id]
  subnets            = [aws_subnet.public_subnet.id]
}



