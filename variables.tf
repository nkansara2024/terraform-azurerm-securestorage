variable resource_group_name {
    type=string
    description = "Resource Group Name"
}

variable "location" {
    type=string
    description = "Resource Location"
  
}
variable "storage_account_name" {
    type= string
    description = "Name of the Storage Account"
  
}
variable "environment" {
    type=string
    description = "Name of the Environment"
  
}