output "iam_role_name" {
  description = "Name of the planned IAM role."
  value       = aws_iam_role.ec2_s3_list.name
}

output "iam_role_arn" {
  description = "ARN of the IAM role after deployment."
  value       = aws_iam_role.ec2_s3_list.arn
}

output "iam_policy_arn" {
  description = "ARN of the IAM policy after deployment."
  value       = aws_iam_policy.s3_list.arn
}
