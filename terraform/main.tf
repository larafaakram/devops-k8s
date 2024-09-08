provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "kubernetes-tr-state-nodes"
    key    = "default.tfstate"
    region = "us-east-1"
  }
}
module "kubernetes" {
  source                  = "./kubernetes"
  ami                     = "ami-06477c0ea3ef3105f"
  cluster_name            = "basic-cluster"
  master_instance_type    = "t3.medium"
  nodes_max_size          = 1
  nodes_min_size          = 1
  private_subnet01_netnum = "1"
  public_subnet01_netnum  = "2"
  region                  = "us-east-1"
  vpc_cidr_block          = "10.240.0.0/16"
  worker_instance_type    = "t3.medium"
  vpc_name                = "kubernetes"
  ssh_public_key          = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDDcDLHvDUF+yVoQ/63mSMTOzC8wQ1dOkAZT9ClK8SOpNSLKl8TQQg45XybwIP/NISnrlTws9ka0kYweDwb1OxL4bAfI0t8fHOdmQtIi1UHX9mnwFG65h2edaa5PiwWwHaG2ZmRzHmXqkCEFSsd0Ox79YiameTlzek+BEbuwL12jTRN/WOfpf/sOs8PA9I2b3xvDArHYHg6KGhRhcW27822x0CDowi0bgX1Tlh7Bue5FXuzjuRvpxYMQAvX8mLbOpIvoK1B2HcKoZ960dq/rkSjar/9ZVA8xIPpMvj/FdlivuTxIP3Wi7qssnLK7gguizcs6Vu0+j4JrOKz6XZ34EXSqyG2usY1gys+QAm8k7I8ANICltQSYafabtVM5Q1Sg2rS+1EWAicsy01/xX9NEMWgfmj77r5EJmZU6rkp22ftMCOvVv+D4jeXFDz89zWxzYwc3beopcO3zV1ypHbuTp37vNpoP5ZmN3vCuzkvh9rlUZ22zT5I1zh1vtgYZrVXiDaVjaYB4yVNpLzHXQ1V1pypEX5zFCCvPK3NgyM5PGLlogcFqTobGWil/aryC4NaG+U7yf/bje+i+ugZz7tY/qfGCdrxVNf8/8TvbpVnTbmTmri5IWp0eW9sta1dZ6k6fLZpoIGIEh39pLw8any4RTLdhQs2R2v8c3K4qlH9QHIK0w== larafa.akram@gmail.com"
}
