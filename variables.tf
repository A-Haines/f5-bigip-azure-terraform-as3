#################################################################################
# VARIABLES CREATION - DO NOT UPDATE THIS FILE
#       ---------------> Please update terraform.tfvars or accept defaults
#################################################################################

## F5 Hostname/IP Address that AS3 will be executed against
variable "address" {
  default = "xxxxx"
}

## F5 Username for Authentication
variable "username" {
  default = "admin"
}

## F5 Password for Authentication
variable "password" {
  default = "xxxxx"
}