variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}


variable "public_key_path" {
  type        = string
  description = "Path to SSH public key (e.g., ~/.ssh/id_rsa.pub)"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "custom_username" {
  type        = string
  description = "Custom SSH username"
  default     = "devuser"
}


variable "custom_password" {
  type        = string
  description = "Custom SSH password"
  sensitive   = true
}


