rgs = {
  rg1 = {
    name     = "test-rg"
    location = "West Europe"
  }
}
stgs = {
  stg1 = {
    name                     = "stg34521"
    resource_group_name      = "test-rg"
    location                 = "West Europe"
    account_tier             = "Standard"
    account_replication_type = "GRS"

  }
}
vnets = {
  elearn-vnet = {
    name                = "elearn-vnet"
    resource_group_name = "test-rg"
    location            = "West Europe"
    address_space       = ["10.0.0.0/16"]
    nic_name            = "frontend-nic"
  }
}
subnets = {
  frontend-subnet = {
    name                 = "frontend-subnet"
    resource_group_name  = "test-rg"
    virtual_network_name = "elearn-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}
nsgs = {
  frontend-nsg = {
    name                = "frontend-nsg"
    resource_group_name = "test-rg"
    location            = "West Europe"
    security_rule = [
      {
        name                       = "test123"
        priority                   = 100
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      }
    ]
  }
}
nics = {
  frontend-nic = {
    name                = "frontend_nic"
    location            = "West Europe"
    resource_group_name = "test-rg"
    subnet_name         = "frontend-subnet"
    pip_name            = "frontend-pip"
  }
}
pips = {
  frontend-pip = {
    name                = "frontend-pip"
    resource_group_name = "test-rg"
    location            = "West Europe"
    allocation_method   = "Static"
  }
}
vms = {
  frontend-vm = {
    name                = "frontend-vm"
    location            = "West Europe"
    resource_group_name = "test-rg"
    size                = "Standard_F2"
    admin_username      = "frontend"
    admin_password      = "Frontend@12345678"
    nic_name            = "frontend-nic"
  }
}

associations = {
  assoc1 = {
    nic_name            = "frontend-nic"
    nsg_name            = "frontend-nsg"
    resource_group_name = "test-rg"
  }
}