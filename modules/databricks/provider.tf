
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 1.0.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = ">=1.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 1.0.0"
    }
    databricks = {
      source = "databricks/databricks"
      version = "1.40.0"
    }
  }

}

provider "azurerm" {
  skip_provider_registration = true
  features {

    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }

}


provider "random" {
}
provider "azuread" {
  tenant_id = "035ea2b8-0fe4-47b2-a0df-03d15033c327"
}


provider "databricks" {
  alias                       = "azure_account"
  host                        = data.azurerm_databricks_workspace.dbs-ws.workspace_url
  azure_workspace_resource_id = data.azurerm_databricks_workspace.dbs-ws.id
  auth_type = "azure-cli"
}
provider "databricks" {
alias = "second"
}
 