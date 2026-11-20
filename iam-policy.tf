resource "aws_iam_policy" "s3_list" {
  name        = "terraform-iam-lab-s3-list-policy"
  description = "Allow listing S3 buckets only"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Sid      = "ListBuckets"
      Effect   = "Allow"
      Action   = "s3:ListAllMyBuckets"
      Resource = "*"
    }]
  })

  tags = {
    Project     = "terraform-aws-iam-lab"
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}

resource "aws_iam_role_policy_attachment" "s3_list" {
  role       = aws_iam_role.ec2_s3_list.name
  policy_arn = aws_iam_policy.s3_list.arn
}
