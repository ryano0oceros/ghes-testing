# GHES -----------------------------------------------------------------------------------------------------------------
output "ghes_primary" {
  description = "GHES primary details"

  value = {
    "PUBLIC_IP"   = element(module.ghes.public_ips, 0)
    "INSTANCE_ID" = element(module.ghes.instance_ids, 0)
  }
}

output "ghes_replica" {
  description = "GHES replica details"

  value = {
    "PUBLIC_IP"   = element(module.ghes.public_ips, 1)
    "INSTANCE_ID" = element(module.ghes.instance_ids, 1)
  }
}

# Backup Utils ---------------------------------------------------------------------------------------------------------
output "backup_utils" {
  description = "GHES backup-utils details"

  value = {
    "PUBLIC_IP"   = module.backup_utils.public_ip
    "INSTANCE_ID" = module.backup_utils.instance_id
  }
}
