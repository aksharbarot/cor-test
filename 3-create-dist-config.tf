resource "aws_imagebuilder_distribution_configuration" "ibuilder" {
  name = "kyndryl-distribution-Lin"

  distribution {
    ami_distribution_configuration {

      ami_tags = {
        CostCenter = "Kyndryl-IT",
        Name       = "Kyndryl AMI"
      }

      name = "Kyndryl-{{ imagebuilder:buildDate }}"

      launch_permission {
        # user_ids = ["123456789012"]
      }
    }
    region = var.aws_region
  }
}
