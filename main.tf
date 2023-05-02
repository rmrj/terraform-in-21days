terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0127b2e6f3b9b94d5"
  instance_type = "t2.micro"

  tags = {
    Name  = "ExampleAppServerInstance"
    Owner = "Rama"
  }
}
