rginfo = {
  rg1 = {
    name     = "rg-rmnk"
    location = "eastus"
  }
}

vnetinfo = {
  vnet1 = {
    name                = "vnet-rmnk"
    resource_group_name = "rg-rmnk"
    location            = "eastus"
    address_space       = ["10.0.0.0/16"]
  }
}

subnetinfo = {
  subnet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "rg-rmnk"
    virtual_network_name = "vnet-rmnk"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "backend-subnet"
    resource_group_name  = "rg-rmnk"
    virtual_network_name = "vnet-rmnk"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

pipinfo = {
  pip1 = {
    name                = "frontend-vm-pip"
    resource_group_name = "rg-rmnk"
    location            = "eastus"
  }
  pip2 = {
    name                = "backend-vm-pip"
    resource_group_name = "rg-rmnk"
    location            = "eastus"
  }
}
vminfo = {
  vm1 = {
    nic_name        = "frontend-nic"
    nic_location    = "eastus"
    nic_rg_name     = "rg-rmnk"
    nic_subnet_name = "frontend-subnet"
    nic_vnet_name   = "vnet-rmnk"
    nic_pip_name    = "frontend-vm-pip"
    vm_name         = "frontend-vm"
    admin_username  = "rmnk"
    admin_password  = "Password@1234"
  }
  vm2 = {
    nic_name        = "backend-nic"
    nic_location    = "eastus"
    nic_rg_name     = "rg-rmnk"
    nic_subnet_name = "backend-subnet"
    nic_vnet_name   = "vnet-rmnk"
    nic_pip_name    = "backend-vm-pip"
    vm_name         = "backend-vm"
    admin_username  = "rmnk"
    admin_password  = "Password@1234"

  }
}