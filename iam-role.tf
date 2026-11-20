resource "aws_iam_role" "ec2_s3_list" {
  name = "terraform-iam-lab-ec2-s3-list-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Action = "sts:AssumeRole"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
  })

  tags = {
    Project     = "terraform-aws-iam-lab"
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}
