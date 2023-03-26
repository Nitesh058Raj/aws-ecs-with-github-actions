terraform {
    required_providers {
        myaws = {
            source = "hashicorp/aws"
            version = "~> 4.47.0"
            configuration_aliases = [myaws.alternate]
        }
    }
}

provider "myaws" {
    region = "ap-south-1"
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}
