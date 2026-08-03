module "resource_group" {
  source = "../Modules/azurerm_resource_group"
  rginfo = var.rginfo
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../Modules/azurerm_virtual_network"
  vnetinfo   = var.vnetinfo
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../Modules/azurerm_subnet"
  subnetinfo = var.subnetinfo
}

module "pip" {
  depends_on = [module.subnet]
  source     = "../Modules/azurerm_pip"
  pipinfo    = var.pipinfo
}

module "virtual_machine" {
  depends_on = [module.pip]
  source     = "../Modules/azurerm_virtual_machine"
  vms        = var.vms
}