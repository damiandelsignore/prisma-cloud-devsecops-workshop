provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "a71b4f7d-345c-4f8c-8c45-da13e8c9ec6c"
    git_commit           = "94aa443650b7124b5b2ad3658369b9efc77aa4e4"
    git_file             = "code/build/dev-s3.tf"
    git_last_modified_at = "2024-12-11 17:27:48"
    git_last_modified_by = "damian.del.signore@gmail.com"
    git_modifiers        = "damian.del.signore"
    git_org              = "damiandelsignore"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
