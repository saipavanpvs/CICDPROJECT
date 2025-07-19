provider "aws" {
    region=var.aws_region
}

terraform {
    backend "s3" {
        bucket = "Modularworkspace1"
        key    = "Production.tfstate"
        region=var.aws_region

    }
}
