terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.35"
    }
  }
}

provider "snowflake" {
  role  = "RL_CICD_INFRA"
  username= username
  password= password
  account= account
  
}

resource "snowflake_database" "db" {
  name     = "TF1_DEMO_19MAR"
}


