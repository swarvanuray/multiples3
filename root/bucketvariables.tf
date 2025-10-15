variable "buckets" {
  type = map(object({
    bucket_name         = string
    force_destroy       = bool
    tags                = map(string)
    versioning_enabled  = bool
    sse_enabled         = bool
    block_public_access = bool
  }))
  default = {
    bucket_one = {
      bucket_name         = "swarv1234"
      force_destroy       = true                            # Set to false in production
      tags                = { Environment = "Dev", Name = "BucketOne" }
      versioning_enabled  = true
      sse_enabled         = true
      block_public_access = true
    }
    bucket_two = {
      bucket_name         = "swarv456"
      force_destroy       = false                          # Set to false in production
      tags                = { Environment = "Dev", Name = "BucketTwo" }
      versioning_enabled  = false
      sse_enabled         = true
      block_public_access = true
    }
    # Add more buckets as needed
  }
  description = "Configurations for multiple S3 buckets with feature flags."
}