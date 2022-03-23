module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "2.8.0"

 bucket = "hashcatgustaoliveirablabla"
  acl    = "private"

  versioning = {
    enabled = true
  }
  bucket_prefix = var.prefix
  tags = {
    Department = "devops"
    Billable = "true"
    teste = "ultimo"
  }
}