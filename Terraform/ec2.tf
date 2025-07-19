data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"] # Amazon's official account ID
}

locals {
    instance_names = ["Master","Slave_1","Slave_2"]
}


resource "aws_instance" "my_ec2" {
    ami =data.aws_ami.amazon_linux.id
    instance_type="t3.medium"
    count=length(local.instance_names)
    vpc_security_group_ids = [aws_security_group.My_security_group.id]

    tags = {
        Name= local.instance_names[count.index]
    }

}
