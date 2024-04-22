
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
  host                        = "https://adb-5950922010939239.19.azuredatabricks.net"
  azure_workspace_resource_id = "/subscriptions/c270375a-a0ab-4551-9ebb-ab9503713972/resourceGroups/BDAZE1IDAPPRG01/providers/Microsoft.Databricks/workspaces/BDAZE1IDAPPBK01"
}
provider "databricks" {
alias = "second"
}

# module "databricks0206"{
#     source = "./modules/databricks"
#     appmnemonic               = "nooe"
#     environment               = "dev"
#     functional_area           = "global services"
#     data_product_name         = "Service Management"
#     databricks_account_id     = "9ef9e132-f9de-4c20-9ce2-0422dc9a409d"
#     databricks_workspace_name = "BDAZE1IDAPPBK01"
#     keyvault                  = "BDAZE1IEOONKV01"
#     datafactory               = "BDAZE1INOOEDF02"
#     subscription_id           = "e7a4fc71-f2cb-415e-966e-03bdb900a137"
#     service_principal         = "databricksspn"
#     ad_admins_group           = "AD-SEC-ALL-GLO-EOON-ADMINS "
#     ad_developers_group       = "AD-SEC-ALL-GLO-EOON-DEVELOPERS"

# }