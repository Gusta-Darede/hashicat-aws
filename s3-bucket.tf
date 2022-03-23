module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "2.8.0"

  bucket = "my-s3-bucket-hashcatGustaoliveira"
  acl    = "private"

  versioning = {
    enabled = true
  }
  bucket_prefix = var.prefix
  tag = {
    Department = "devops"
    Billable = "true"
  }
}