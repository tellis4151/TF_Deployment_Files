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
  region			= "us-east-1"
  shared_config_files		= ["~/.aws/config"]
  shared_credentials_files	= ["~/.aws/credentials"]
  profile			= "default"
}

resource "aws_instance" "tf_ans_instance" {
  ami           		= "${var.ami_number}"
  instance_type 		= "${var.instance_type}"
  subnet_id 			= "${var.subnet_id}"
  key_name        		= "${var.key_name}"
  vpc_security_group_ids	= "${var.vpc_security_group_ids}"
  

  tags = {
    Name = "${var.instance_name}"
  }
}
