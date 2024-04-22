variable "appmnemonic" {
  type        = string
  description = "name of the application "
  validation {
    condition     = (length(var.appmnemonic) < 5)
    error_message = "value of appmnemonic should be lessthan 5 charecters"
  }
}
variable "databricks_workspace_name" {
  type = string
}

variable "environment" {
  type = string
  description = "specifies the environment of the app"
}

variable "functional_area" {
  type        = string
  description = "Elanco Functional area that owns the data product associated with the new data lake container."
}
variable "data_product_name" {
  type        = string
  description = "Name of the data product associated with the new data lake container."
}
variable "databricks_account_id" {
  type = string
}
variable "keyvault" {
  type = string
}
variable "datafactory" {
  type = string
}
variable "subscription_id" {
  type = string
}
variable "service_principal" {
  type = string
}
variable "ad_admins_group" {
  type = string
}
variable "ad_developers_group" {
  type = string
}

