output "image" {
  value = aws_imagebuilder_image.ibuilder.output_resources
}

output "image1" {
  value = aws_imagebuilder_image_recipe.ibuilder
}

output "image2" {
  value = aws_imagebuilder_image_pipeline.ibuilder
}
