variable "yc_token" {
  type        = string
  description = "Yandex Cloud OAuth token"
  sensitive   = true
}

variable "yc_cloud_id" {
  type        = string
  description = "Yandex Cloud ID"
}

variable "yc_folder_id" {
  type        = string
  description = "Yandex Cloud Folder ID"
}

variable "ssh_public_key_path" {
  type        = string
  description = "Path to SSH public key file"
  default     = "~/.ssh/id_rsa.pub"
}

variable "ssh_private_key_path" {
  type        = string
  description = "Path to SSH private key file"
  default     = "~/.ssh/id_rsa"
}

# Автоматическое чтение SSH ключей
locals {
  ssh_public_key  = file(pathexpand(var.ssh_public_key_path))
  ssh_private_key = file(pathexpand(var.ssh_private_key_path))
}
