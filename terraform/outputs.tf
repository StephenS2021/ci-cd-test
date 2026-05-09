# outputs.tf is Terraforms way of printing useful information to the terminal after `terraform apply` finishes creating the infrastructure
# After Terraform builds everyhting in aws, outputs.tf declares the values that I care about like the site URL and prints them

# This is the URL of the site that will be live at
output "cloudfront_url" {
  value = "https://${aws_cloudfront_distribution.site.domain_name}"
}

# This is the name of the S3 bucket that will be used to store the files for the site
output "s3_bucket_name" {
  value = aws_s3_bucket.site.id
}

# This is the ID of the CloudFront distribution that will be used to serve the site
output "cloudfront_distribution_id" {
  value = aws_cloudfront_distribution.site.id
}