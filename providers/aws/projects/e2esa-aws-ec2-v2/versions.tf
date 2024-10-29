terraform {
  required_version = "~> 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.5.0"
    }
  }
}

# provider block

# provider "aws" {
#   profile = "default"
#   region  = var.aws_region
# }

provider "aws" {
  profile = "default"
  region  = lookup(var.awsprops, "region")
}