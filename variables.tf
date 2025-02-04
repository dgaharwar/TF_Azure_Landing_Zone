# Use variables to customize the deployment

variable subscriptionId {}
variable tenantId {}
variable clientId {}
variable clientSecret {}

variable "root_id" {
  type    = string
}

variable "root_name" {
  type    = string
}

variable "deploy_management_resources" {
  type    = bool
  default = true
}

variable "log_retention_in_days" {
  type    = number
  default = 50
}

variable "security_alerts_email_address" {
  type    = string
}

variable "management_resources_location" {
  type    = string
}

variable "management_resources_tags" {
  type = map(string)
  default = {
    demo_type = "deploy_management_resources_custom"
  }
}
