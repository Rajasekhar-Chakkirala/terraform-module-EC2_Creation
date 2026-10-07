output "instance_id" {
  value       = aws_instance.this.id
  description = "The ID of the created EC2 instance"
}

output "public_ip" {
  value       = aws_instance.this.public_ip
  description = "The public IP address of the EC2 instance"
}

