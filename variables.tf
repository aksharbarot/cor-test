variable "aws_region" {
  type        = string
  description = "The AWS region."
}


variable "aws_az" {
  type        = string
  description = "The AWS region 1 ."
}


variable events {
  default     = ["ASSESSMENT_RUN_STARTED", "ASSESSMENT_RUN_COMPLETED", "ASSESSMENT_RUN_STATE_CHANGED", "FINDING_REPORTED"]
  description = "A list of events to fire to an SNS topic. May contain ASSESSMENT_RUN_STARTED, ASSESSMENT_RUN_COMPLETED, ASSESSMENT_RUN_STATE_CHANGED, and/or FINDING_REPORTED."
  type        = list(string)
}
