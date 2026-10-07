output "instance_id" {
  value       = module.ec2_instance.instance_id
  description = "The ID of the created EC2 instance"
}

output "public_ip" {
  value       = module.ec2_instance.public_ip
  description = "The public IP address of the EC2 instance"
}