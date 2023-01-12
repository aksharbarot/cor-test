variable "aws_region" {
  type        = string
  description = "The AWS region."
}


variable "aws_az" {
  type        = string
  description = "The AWS region 1 ."
}


variable Change_ManagerEmail {
  type        = list(string)
  default     = ["akshar","barot","test"]
  description = "Email endpoint for SNS notification"
}
