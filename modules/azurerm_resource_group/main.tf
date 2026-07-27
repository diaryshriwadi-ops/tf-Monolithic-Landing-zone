variable "rginfo" {}
resource "azurerm_resource_group" "rg" {
    for_each = var.rginfo
    name=each.value.name
    location=each.value.location
  
}