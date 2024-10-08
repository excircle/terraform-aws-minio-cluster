variable "application_name" {
  description = "Application Name"
  type = string
  default = "MinIO"
}

variable "az_count" {
  description = "Number of Availability Zones - number provided traverses available zones - Example: 2 provide (us-west-2{a,b})"
  type = number
  default = 2
}

variable "make_private" {
  description = "Make the cluster private"
  type = bool
  default = false
}

variable "sshkey" {
  description = "SSH key to use with EC2 host"
  type        = string
}

variable "hosts" {
  description = "Number of hosts to create"
  type = number
  default = 2
}

variable "disks" {
  description = "DO NOT EXCEED 4 DISKS"
  type = list(string)
  default = ["h", "i", "j", "k"] # Full disks: ["h", "i", "j", "k"]
}

variable "minio_console_port" {
  description = "MinIO Console Port"
  type = number
  default = 9001
}

variable "minio_api_port" {
  description = "MinIO API Port"
  type = number
  default = 9000
}

variable "ec2_key_name" {
  description = "EC2 Key Pair Name"
  type = string
  default = "minio-key"
}

variable "ec2_keypair_tag_name" {
  description = "EC2 Key Pair Tag Name"
  type = string
  default = "minio-key2"
}

variable "createdby_tag" {
  description = "Tag for created by"
  type = string
  default = "Terraform"
}

variable "owner_tag" {
  description = "Tag for owner"
  type = string
  default = "Alexander Kalaj"
}

variable "purpose_tag" {
  description = "Tag for purpose"
  type = string
  default = "MinIO-Training"
}

variable "group_tag" {
  description = "Tag for group"
  type = string
  default = "MinIO-Team"
}

variable "ec2_ami_image" {
  description = "EC2 AMI Image"
  type = string
  default = "ami-03c983f9003cb9cd1" # "ami-03c983f9003cb9cd1" us-west-2 AMI | Ubuntu 22.04.4 LTS (Jammy Jellyfish)
}

variable "ec2_instance_type" {
  description = "EC2 Instance Type"
  type = string
  default = "t2.micro"
}

variable "ebs_volume_size" {
  description = "EBS Volume Size"
  type = number
  default = 5
}

variable "delete_ebs_on_termination" {
  description = "Delete EBS on Termination"
  type = bool
  default = true
} 

variable "ebs_volume_type" {
  description = "EBS Volume Type"
  type = string
  default = "gp2"
}

variable "aws_security_group_name" {
  description = "AWS Security Group Name"
  type = string
  default = "minio-test-sg"
}

variable "aws_iam_role_name" {
  description = "AWS IAM Role Name"
  type = string
  default = "ec2_cli_role"
}

variable "aws_iam_policy_name" {
  description = "AWS IAM Policy Name"
  type = string
  default = "CLI-Policy"
}

variable "ec2_instance_profile_name" {
  description = "EC2 Instance Profile Name"
  type = string
  default = "ec2_instance_profile"
}

variable "load_balancing_scheme" {
  description = "Load Balancing Scheme"
  type = string
  default = "NONE"
}

variable "bastion_host" {
  description = "Create Bastion Host"
  type = bool
  default = false
}