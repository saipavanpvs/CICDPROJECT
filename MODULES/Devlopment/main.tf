provider "aws" {
    region=var.aws_region
}

terraform {
    backend "s3" {
        bucket = "Modularworkspace1"
        key    = "Development.tfstate"
        region=var.aws_region

    }
}
