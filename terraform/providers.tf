terraform {

     backend "s3" {
        bucket         = "movie-bot-tfstate"
        key            = "global/s3/terraform.tfstate"
        region         = "us-east-1"
        # use_lockfile   = true
        # dynamodb_table = "movie-bot-tflock" # optional, for state locking
        encrypt        = true
  }
  required_providers {

    time = {
      source  = "hashicorp/time"
      version = ">= 0.9.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.47.0"
    }



    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.5"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.4"
    }
  }
}

provider "aws" {
  region = var.region
}

