
variable "vnet_range" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
  description = "Address range for deployment VNet"
}
variable "subnet_range" {
  type        = list(string)
  default     = ["10.0.0.0/24"]
  description = "Address range for session host subnet"
}

variable "prefix" {
  type        = string
  default     = "avd"
  description = "Prefix of the name of the AVD machine(s)"
}