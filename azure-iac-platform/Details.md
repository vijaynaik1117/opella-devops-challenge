Code Quality Tools & Processes
Terraform Tools:

terraform fmt - Auto-format code

terraform validate - Validate syntax

tflint - Linter for Terraform

tfsec - Security scanner

checkov - Infrastructure as Code scanner

CI/CD Integration:

GitHub Actions with pre-commit hooks

Automated plan/apply workflows

PR reviews with Terraform plan output

Documentation:

README files for each module

Input/output variables documentation

Examples of usage

Version Control:

Semantic versioning for modules

Git tags for releases

Branch protection rules

Testing:

Terratest for module validation

Azure Policy for compliance checks

This implementation provides a clean, reusable module for Azure VNET deployment with additional resources, following infrastructure-as-code best practices.





Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_resource_group.rg will be created
  + resource "azurerm_resource_group" "rg" {
      + id       = (known after apply)
      + location = "eastus"
      + name     = "dev-vnet-rg"
      + tags     = {
          + "Environment" = "Development"
        }
    }

  # azurerm_storage_account.storage[0] will be created
  + resource "azurerm_storage_account" "storage" {
      + access_tier                      = (known after apply)
      + account_kind                     = "StorageV2"
      + account_replication_type         = "LRS"
      + account_tier                     = "Standard"
      + allow_nested_items_to_be_public  = true
      + enable_https_traffic_only        = true
      + id                               = (known after apply)
      + location                         = "eastus"
      + min_tls_version                  = "TLS1_2"
      + name                             = "devvnetstorage"
      + primary_blob_endpoint            = (known after apply)
      + resource_group_name              = "dev-vnet-rg"
      + tags                             = {
          + "Environment" = "Development"
        }
    }

  # azurerm_subnet.subnets["subnet1"] will be created
  + resource "azurerm_subnet" "subnets" {
      + address_prefixes                               = [
          + "10.0.1.0/24",
        ]
      + id                                            = (known after apply)
      + name                                          = "subnet1"
      + resource_group_name                           = "dev-vnet-rg"
      + virtual_network_name                         = "dev-vnet"
    }

  # azurerm_subnet.subnets["subnet2"] will be created
  + resource "azurerm_subnet" "subnets" {
      + address_prefixes                               = [
          + "10.0.2.0/24",
        ]
      + id                                            = (known after apply)
      + name                                          = "subnet2"
      + resource_group_name                           = "dev-vnet-rg"
      + virtual_network_name                         = "dev-vnet"
    }

  # azurerm_virtual_network.vnet will be created
  + resource "azurerm_virtual_network" "vnet" {
      + address_space       = [
          + "10.0.0.0/16",
        ]
      + guid               = (known after apply)
      + id                 = (known after apply)
      + location           = "eastus"
      + name               = "dev-vnet"
      + resource_group_name = "dev-vnet-rg"
      + tags               = {
          + "Environment" = "Development"
        }
    }

Plan: 5 to add, 0 to change, 0 to destroy.