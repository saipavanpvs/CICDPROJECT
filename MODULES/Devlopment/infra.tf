module "dev_vpc_1" {
    source = "./modules/network"
    vpc_cidr = var.vpc_cidr
    vpc_name = dev-vpc-1
    environment = var.environment
    public_cidr_block = var.public_cidr_block
    private_cidr_block = var.private_cidr_block
    azs = var.azs

}