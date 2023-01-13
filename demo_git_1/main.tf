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
  access_key			= "AKIASFBIK6A4O62I4MVR"
  secret_key			= "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"
}

resource "aws_instance" "tf_ans_instance" {
  ami           		= "${var.ami_number}"
  instance_type 		= "${var.instance_type}"
  subnet_id 			= "${var.subnet_id}"
  key_name        		= "${var.key_name}"
  vpc_security_group_ids        = "${var.vpc_security_group_ids}"
  

  tags = {
    Name = "${var.instance_name}"
  }
}
