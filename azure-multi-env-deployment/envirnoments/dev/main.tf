module "network" {
  source = "../../modules/vnet"

  environment           = "dev"
  region               = "eastus"
  resource_group_suffix = "network-rg"
  address_space        = ["10.0.0.0/16"]
  subnets = {
    "web"     = "10.0.1.0/24"
    "app"     = "10.0.2.0/24"
    "data"    = "10.0.3.0/24"
  }

  tags = {
    Owner       = "dev-team"
    CostCenter  = "12345"
  }
}

module "compute" {
  source = "../../modules/compute"

  environment          = "dev"
  region              = "eastus"
  resource_group_name = module.network.resource_group_name
  location            = module.network.location
  vm_size             = "Standard_B1s"
  admin_username      = "devadmin"
  ssh_public_key_path = "./ssh_keys/id_rsa.pub"

  tags = module.network.tags
}