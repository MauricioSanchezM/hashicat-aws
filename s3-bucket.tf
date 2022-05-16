module "s3-bucket" {
  source  = "app.terraform.io/demo-hashicorp-aws/s3-bucket/aws"
  bucket = "my-s3-bucket-for-logs"
  acl    = "log-delivery-write"

  # Allow deletion of non-empty bucket
  force_destroy = true

  attach_elb_log_delivery_policy = true
}