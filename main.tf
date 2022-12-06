# Create the EC2 IAM role to use for the image
data "aws_region" "current" {}
data "aws_partition" "current" {}
