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
  username=${{ secrets.SNOWFLAKE_USER }}
  password=${{ secrets.SNOWFLAKE_PASSWORD }}
  account=${{ secrets.SNOWFLAKE_ACCOUNT }}
  
}

resource "snowflake_database" "db" {
  name     = "TF1_DEMO_24MAR"
}

