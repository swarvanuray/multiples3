variable "buckets" {
  type = map(object({
    bucket_name         = string
    force_destroy       = bool
    tags                = map(string)
    versioning_enabled  = bool
    sse_enabled         = bool
    block_public_access = bool
  }))
  description = "Map of S3 bucket configurations, with feature flags for versioning, server-side encryption, and public access blocking."
}