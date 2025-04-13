module "vnet" {
  source = "../../modules/vnet"

  resource_group_name      = "dev-vnet-rg"
  location                = "eastus"
  vnet_name               = "dev-vnet"
  address_space           = ["10.0.0.0/16"]
  subnets = {
    "subnet1" = "10.0.1.0/24"
    "subnet2" = "10.0.2.0/24"
  }
  create_storage_account   = true
  storage_account_tier     = "Standard"
  storage_replication_type = "LRS"
  tags = {
    Environment = "Development"
  }
}