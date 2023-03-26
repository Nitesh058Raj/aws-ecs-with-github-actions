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
    access_key = var.AWS_ACCESS_KEY
    secret_key = var.AWS_SECRET_KEY
}
