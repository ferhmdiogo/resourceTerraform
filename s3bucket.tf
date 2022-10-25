required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.35.0"
    }
  }


provider "aws"{
    region = "us-east-1"
    

}

resource "aws_s3_bucket" "bucketferhmdiogo" {
  bucket = "bucketferhmdiogo01"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}
