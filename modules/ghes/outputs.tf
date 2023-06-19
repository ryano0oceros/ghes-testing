output "instance_ids" {
  description = "The instance IDs"
  value       = [aws_instance.ghes.*.id]
}

output "subnet_ids" {
  description = "List of subnet IDs"
  value       = [aws_instance.ghes.*.subnet_id]
}

output "private_ips" {
  description = "The instance private IPs"
  value       = [aws_instance.ghes.*.private_ip]
}

output "public_ips" {
  description = "The instance public IPs"
  value       = [aws_eip.ghes_eip.*.public_ip]
}
