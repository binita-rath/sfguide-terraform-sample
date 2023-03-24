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
  #username="BINITARATH"
  #password="Binit@feb2023"
  #account="az60464.australia-east.azure"
  
}

resource "snowflake_database" "db" {
  name     = "TF1_DEMO_24MAR"
}

