module "vnet" {
  source = "../../modules/vnet"

  resource_group_name      = "prod-vnet-rg"
  location                = "eastus"
  vnet_name               = "prod-vnet"
  address_space           = ["10.1.0.0/16"]
  subnets = {
    "subnet1" = "10.1.1.0/24"
    "subnet2" = "10.1.2.0/24"
    "subnet3" = "10.1.3.0/24"
  }
  create_storage_account   = true
  storage_account_tier     = "Standard"
  storage_replication_type = "GRS"
  tags = {
    Environment = "Production"
    Critical   = "true"
  }
}