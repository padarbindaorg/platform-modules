resource "aws_s3_bucket" "web_app_bucket" {
  bucket = "${var.environment}-${var.tag_name}-web-app-bucket"
 

  tags = {
    Name        = "${var.environment}-${var.tag_name}-web-app-bucket"
    Environment = var.environment
  }
  
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.web_app_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}