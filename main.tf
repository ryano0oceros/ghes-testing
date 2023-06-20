locals {
  tags = merge(
    {
      "Environment" = terraform.workspace
    },
    var.tags,
  )
}

# ----------------------------------------------------------------------------------------------------------------------
# Providers
# ----------------------------------------------------------------------------------------------------------------------
# https://www.terraform.io/docs/providers/aws/index.html
provider "aws" {
  region                  = var.aws_region
  profile                 = var.aws_profile
  shared_credentials_file = var.aws_credantials_file
}

# ----------------------------------------------------------------------------------------------------------------------
# Build instances
# ----------------------------------------------------------------------------------------------------------------------
module "ghes" {
  source = "./modules/ghes"

  vpc_id                = var.vpc_id
  name                  = "ghes"
  tags                  = local.tags
  ghes_region           = var.aws_region
  ghes_azs              = ["${var.aws_region}a", "${var.aws_region}b"]
  ghes_instance_type    = var.ghes_instance_type
  ghes_data_volume_type = var.ghes_data_volume_type
  ghes_data_volume_size = var.ghes_data_volume_size
  ghes_version          = var.ghes_version
}

module "backup_utils" {
  source = "./modules/backup-utils"

  vpc_id              = var.vpc_id
  name                = "backup-utils"
  tags                = local.tags
  backup_utils_region = var.aws_region
  backup_utils_az     = "${var.aws_region}c"
}
