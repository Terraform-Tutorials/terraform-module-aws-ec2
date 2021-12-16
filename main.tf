terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  shared_credentials_file = "/home/amaury/.aws/credentials"
  profile = "elliot"
  region = "sa-east-1"
}

module "server" {
  source          = "./modules/ec2"
  ami        = "ami-09e67e426f25ce0d7"
  instance_type       = "t2.micro"
}