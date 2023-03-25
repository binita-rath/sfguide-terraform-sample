terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.35"
    }
  }
}

variable "username" {
  description = "username."
  type        = string
  #default     = "BINITARATH"
}

variable "password" {
  description = "password"
  type        = string
  #default     = "Binit@feb2023"
}

variable "account" {
  description = "account"
  type        = string
  #default     = "az60464.australia-east.azure"
}

provider "snowflake" {
  role  = "RL_CICD_INFRA"
  username=var.username
  password=var.password
  account=var.account
  
}

resource "snowflake_database" "db" {
  name     = "TF1_DEMO_21MAR"
}


