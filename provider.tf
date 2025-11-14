terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.21.1"
    }
  }
}
provider "azurerm" {
  features {}

  subscription_id = "245413b2-ec2b-4a15-93d2-2f165a2c170d"

}