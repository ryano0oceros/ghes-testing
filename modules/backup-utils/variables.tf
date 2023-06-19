# AWS ------------------------------------------------------------------------------------------------------------------
variable "aws_region" {
  description = "(Required) This is the AWS region. It must be provided, but it can also be sourced from the AWS_DEFAULT_REGION environment variables, or via a shared credentials file if profile is specified"
  default     = "eu-central-1"
}

variable "aws_access_key" {
  description = "(Optional) This is the AWS access key. It must be provided, but it can also be sourced from the AWS_ACCESS_KEY_ID environment variable, or via a shared credentials file if profile is specified"
  default     = ""
}

variable "aws_secret_key" {
  description = "(Optional) This is the AWS secret key. It must be provided, but it can also be sourced from the AWS_SECRET_ACCESS_KEY environment variable, or via a shared credentials file if profile is specified"
  default     = ""
}

variable "aws_profile" {
  description = "(Optional) This is the AWS profile name as set in the shared credentials file"
  default     = ""
}

variable "aws_credantials_file" {
  description = "(Optional) This is the path to the shared credentials file. If this is not set and a profile is specified, ~/.aws/credentials will be used"
  default     = ""
}

variable "vpc_id" {
  description = "The ID of the VPC to assign the resources to"
  default     = ""
}

# Server ---------------------------------------------------------------------------------------------------------------
variable "name" {
  description = "Name to be used on all the resources as identifier"
  default     = "ghes-backup-utils"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}

variable "public_key_path" {
  description = "The path to the public key"
  default     = "~/.ssh/id_rsa.pub"
}

variable "backup_utils_region" {
  description = "The AWS region"
  default     = ""
}

variable "backup_utils_az" {
  description = "The availability zones in the region"
  default     = ""
}

variable "backup_utils_instance_type" {
  description = "(Optional) The type of instance to start. Updates to this field will trigger a stop/start of the EC2 instance"
  default     = "t2.micro"
}

variable "backup_utils_volume_size" {
  description = "(Optional) The size of the drive in GiBs. See: https://git.io/fjJTR#storage-requirements"
  default     = 8
}
