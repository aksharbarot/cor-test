resource "aws_imagebuilder_image_pipeline" "ibuilder" {
  name                             = var.ami_name_tag
  status                           = "ENABLED"
  description                      = "Creates an AMI."
  image_recipe_arn                 = aws_imagebuilder_image_recipe.ibuilder.arn
  infrastructure_configuration_arn = aws_imagebuilder_infrastructure_configuration.ibuilder.arn
  distribution_configuration_arn   = aws_imagebuilder_distribution_configuration.ibuilder.arn

  schedule {
    schedule_expression = "cron(0 8 ? * tue)"
    # ibuilder cron expressions states every Tuesday at 8 AM.
    pipeline_execution_start_condition = "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"
  }

  # Test the image after build
  image_tests_configuration {
    image_tests_enabled = true
    timeout_minutes     = 60
  }

  tags = {
    "Name" = "${var.ami_name_tag}-pipeline"
  }

  depends_on = [
    aws_imagebuilder_image_recipe.ibuilder,
    aws_imagebuilder_infrastructure_configuration.ibuilder
  ]
}
