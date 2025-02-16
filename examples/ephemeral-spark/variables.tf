variable "vpc_id" {
  type        = string
  description = "VPC ID of the network"
}

variable "bucket_name_for_root_directory" {
  type        = string
  description = "S3 bucket name for storing root directory."
}

variable "bucket_name_for_logs" {
  type        = string
  description = "S3 bucket name for cluster logs."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to add to all resources created by this example."
  default = {
    Author      = "Tamr"
    Environment = "Example"
  }
}

variable "abac_valid_tags" {
  type        = map(string)
  description = "A map of tags that will be inserted inside IAM Policies conditions for restricting EMR Service Role access"
  default = {
    "tamr.com/role" = "emr"
  }
}
