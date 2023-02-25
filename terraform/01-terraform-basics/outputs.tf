output "my_s3_bucket_versioning" {
  value = aws_s3_bucket.first_s3_bucket.versioning[0].enabled
}

output "my_s3_bucket_complete_detail" {
  value = aws_s3_bucket.first_s3_bucket
}


output "my_iam_user_complete_detail" {
  value = aws_iam_user.commmand_line_user
}