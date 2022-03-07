
terraform {
  required_version = ">= 1.1"
  
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 2.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "~> 2.0"    
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.0"    
    }
  }  


# Terraform State Storage to Azure Storage Container
#  backend "azurerm" {
#    resource_group_name   = "terraform-storage-resource"
#    storage_account_name  = "terraformaksstorage"
#    container_name        = "tfstatefiles"
#    key                   = "dev.terraform.tfstate"
#  }  
}



# Terraform Provider Block for AzureRM
provider "azurerm" {
  features {

  }
}

# Terraform Resource Block: Define a Random Pet Resource
resource "random_pet" "aksrandom" {

}