variable "bucket" {
    description = "The name of the S3 bucket"
    type        = string
    default     = "my-web-app-bucket"
  
}

variable  "acl" {
  description = "The ACL for the S3 bucket"
  default = "private"
  type        = string
}

variable "environment" {
  description = "The environment to deploy to"
  type        = string
}

variable "tag_name" {
  description = "value of the tag name"
  type        = string
  default     = "web-app" 
}