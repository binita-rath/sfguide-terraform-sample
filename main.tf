terraform {

  /*cloud {
        organization = "binita-kpmg" 
        workspaces {
          name = "terraform-github-actions" 
        }
        }*/
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.35"
    }
  }
  backend "s3" {
      bucket   = "tf-state-br"
      region   = "eu-west-1"
      shared_credentials_file = "~/.aws/credentials"
  }
  
  }
  
  provider "aws" {
      region = "eu-west-1"
     shared_credentials_file = "~/.aws/credentials"
  
}

provider "snowflake" {
  role  = "RL_CICD_INFRA"
  username= var.username
  password= var.password
  account= var.account
  
}

resource "snowflake_database" "db" {
  name     = "DEV_DEMO_17MAR_BR"
}

