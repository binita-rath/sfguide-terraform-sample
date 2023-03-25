terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.35"
    }
  }
}

variable "username" {}
variable "password" {}
variable "account" {}

provider "snowflake" {
  role  = "RL_CICD_INFRA"
  username=var.username
  password=var.password
  account=var.account
  
}

resource "snowflake_database" "db" {
  name     = "TF1_DEMO_20MAR"
}


