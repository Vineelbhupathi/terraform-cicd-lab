terraform {
  backend "s3" {
    bucket = "your-name-terraform-state-bucket-132"
    key    = "terraform-cicd-lab/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "cicd_ec2" {
  ami           = "ami-0ec10929233384c7f"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-cicd-ec2"
  }
}