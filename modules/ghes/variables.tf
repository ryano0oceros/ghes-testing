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
  default     = "ghes"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}

variable "public_key_path" {
  description = "The path to the public key"
  default     = "~/.ssh/id_ed25519.pub"
}

variable "ghes_region" {
  description = "The AWS region"
  default     = "us-east-1"
}

variable "ghes_azs" {
  description = "A list of availability zones in the region"
  default     = [us-east-1a, us-east-1b]
}

variable "ghes_version" {
  description = "(Optional) GitHub Enterprise Server version to provision"
  default     = "3.8.4"
}

variable "ghes_instance_type" {
  description = "(Optional) The type of instance to start. Updates to this field will trigger a stop/start of the EC2 instance"
  default     = "r5.xlarge"
}

variable "ghes_root_volume_size" {
  description = "(Optional) The size of the drive in GiBs. (Minimum 200)"
  default     = 200
}

variable "ghes_data_volume_size" {
  description = "(Optional) The size of the drive in GiBs."
  default     = 100
}

variable "ghes_data_volume_type" {
  description = "(Optional) The type of EBS volume. Can be `gp2`, `io1`"
  default     = "gp2"
}

variable "ghes_data_volume_iops" {
  description = "(Optional) The amount of provisioned IOPS. This is only valid for volume_type of `io1`, and must be specified if using that type"
  default     = 0
}

variable "ghes_logforwarding_port" {
  description = "(Optional) https://help.github.com/enterprise/admin/installation/log-forwarding"
  default     = 5455
}

variable "ghes_collectdforwarding_port" {
  description = "(Optional) https://help.github.com/enterprise/admin/installation/configuring-collectd"
  default     = 25826
}
