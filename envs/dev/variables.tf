variable "region" {
  description = "AWS region."
  type        = string
  default     = "eu-west-3"
}

variable "name" {
  description = "Name prefix."
  type        = string
  default     = "webapp-dev"
}

variable "container_image" {
  description = "Public image to run (for example the signed image from my devsecops-github-actions-pipeline repo)."
  type        = string
  default     = "nginxinc/nginx-unprivileged:stable-alpine"
}

variable "container_port" {
  description = "Port the container listens on."
  type        = number
  default     = 8080
}

variable "allowed_http_cidrs" {
  description = "CIDRs allowed on port 80. Restrict to your own IP for a private demo."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
