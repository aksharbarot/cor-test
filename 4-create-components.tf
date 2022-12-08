resource "aws_s3_object" "ibuilder" {
  for_each = fileset("files/", "*")
  bucket = "ec2imagebuilder-5"
  key    = "files/${each.value}"
  source = "files/${each.value}"
  # If the md5 hash is different it will re-upload
  etag = filemd5("files/${each.value}")
}
