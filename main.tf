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
}

resource "snowflake_database" "db" {
  name     = "TF_DEMO_24MAR"
}

