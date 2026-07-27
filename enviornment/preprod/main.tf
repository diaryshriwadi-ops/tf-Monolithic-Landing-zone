module "rg" {
  source = "../../modules/azurerm_resource_group"
  rginfo = var.rginfo
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_virtual_network"
  vnetinfo   = var.vnetinfo
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../../modules/azurerm_subnet"
  subnetinfo = var.subnetinfo
}

module "pip" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_pip"
  pipinfo    = var.pipinfo
}

module "vm" {
  depends_on = [module.subnet, module.pip]
  source     = "../../modules/azurerm_virtual_machine"
  vminfo     = var.vminfo

}

module "key_valut" {
  depends_on = [ module.vm]
  source = "../../modules/azurerm_key_vault"
}