resource "aws_vpc" "defaut" {
    cidr_block = var.vpc_cidr
    enable_dns_support = true

    tags = {
        Name = var.vpc_name
        owner = local.owner
        costcenter = local.costcenter
        TeamDL = local.TeamDL
        environment = var.environment

    }
}

resource "aws_internet_gateway" "default" {
    vpc_id = aws_vpc.defaut.id

    tags = {
        Name = var.vpc_name
    }
}