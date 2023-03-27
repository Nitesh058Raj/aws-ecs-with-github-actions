terraform {
  required_version = "~>0.13.0"
  required_providers {
    aws = {
        source = "hasicorp/aws"
        version = "~>3.0"
    }
  }
}