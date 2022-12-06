# Create the EC2 IAM role to use for the image
provider "aws" {
  region = "us-east-1"
}

data "aws_region" "current" {}
data "aws_partition" "current" {}
