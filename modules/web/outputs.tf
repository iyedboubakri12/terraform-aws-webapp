output "instance_id" {
  description = "ID of the EC2 instance (use it with `aws ssm start-session`)."
  value       = aws_instance.web.id
}

output "public_ip" {
  description = "Public IP of the instance."
  value       = aws_instance.web.public_ip
}

output "url" {
  description = "HTTP URL of the application."
  value       = "http://${aws_instance.web.public_dns}"
}
