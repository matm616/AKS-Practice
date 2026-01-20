variable "environment" {
  description = "The environment for this deployment (e.g., dev, prod)"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "stage", "prod"], var.environment)
    error_message = "Environment must be dev, stage, or prod."
  }
}

variable "location" {
  description = "The location to deploy resources"
  type        = string
  default     = "West US 3"
}