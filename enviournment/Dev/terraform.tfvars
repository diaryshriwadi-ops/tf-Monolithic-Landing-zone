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
    name                = "pip_vm_frontend"
    resource_group_name = "rg-rmnk"
    location            = "eastus"
    allocation_method   = "Static"
  }
  pip2 = {
    name                = "pip_vm_backend"
    resource_group_name = "rg-rmnk"
    location            = "eastus"
    allocation_method   = "Static"
  }
}

vms = {
  vm1 = {
    nic_name        = "frontend-vm-nic"
    nic_location    = "eastus"
    nic_rg_name     = "rg-rmnk"
    nic_subnet_name = "frontend-subnet"
    nic_vnet_name   = "vnet-rmnk"
    nic_pip_name    = "pip_vm_frontend"
    vm_name         = "frontend-vm"
    vm_size         = "Standard_D4_v5"
    admin_username  = "hellormnk"
    admin_password  = "Password@1234"
  }
  vm2 = {
    nic_name        = "backend-vm-nic"
    nic_location    = "eastus"
    nic_rg_name     = "rg-rmnk"
    nic_subnet_name = "backend-subnet"
    nic_vnet_name   = "vnet-rmnk"
    nic_pip_name    = "pip_vm_backend"
    vm_name         = "backend-vm"
    vm_size         = "Standard_D4_v5"
    admin_username  = "hellormnk"
    admin_password  = "Password@1234"

  }
}