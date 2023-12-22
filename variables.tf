variable "context" {
  description = "Pass in the appropriate label context module to this variable."
  type        = any
}

variable "description" {
  description = "The description for the KMS key."
  type        = string
}

variable "deletion_window_in_days" {
  description = "The waiting period before AWS KMS will delete the key."
  type        = number
  default     = 30

  validation {
    condition     = var.deletion_window_in_days > 6 && var.deletion_window_in_days < 31
    error_message = "The deletion window must be between 7 and 30 days inclusive."
  }
}

variable "enabled" {
  description = "Enable or disable the module."
  type        = bool
}

variable "key_usage" {
  description = "Intended key purpose."
  type        = string
  default     = "ENCRYPT_DECRYPT"

  validation {
    condition     = contains(["ENCRYPT_DECRYPT", "SIGN_VERIFY", "GENERATE_VERIFY_MAC"], var.key_usage)
    error_message = "Must be one of the following values: \"ENCRYPT_DECRYPT, SIGN_VERIFY, GENERATE_VERIFY_MAC\""
  }
}

variable "policy" {
  description = "A JSON policy to use for the KMS key."
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to apply to the KMS resource(s)."
  type        = map(string)
}