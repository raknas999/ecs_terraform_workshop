  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
  }
}

#provider "aws" {
#  region  = "us-east-2"
#}


##terraform {
#  backend "s3" {
#    bucket = "ecsworkshopbucket"
#    key    = "state/terraform.tfstate"
#    region = "us-east-1"
#  }
#}
