output "url" {
  description = "Open this once the instance has finished booting (1-2 minutes)."
  value       = module.web.url
}

output "instance_id" {
  description = "Connect without SSH: aws ssm start-session --target <instance_id>"
  value       = module.web.instance_id
}
