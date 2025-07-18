provider "aws" {
    region = "ap-south-1"
}

data "aws_vpc" "default" {
    default = true
}

resource "aws_securrity_group" "My_security_group" {
    name = "Primary_security_group"
    vpc_id= data.aws_vpc.default.id

    ingress {
        description = "Allow SSH"
        from _port = 22
        to_port =22
        protocol ="tcp"
        cidr_blocks =["0.0.0.0/0"]
    }

    ingress {
        description = "Allow SMTP"
        from _port = 25
        to_port =25
        protocol ="tcp"
        cidr_blocks =["0.0.0.0/0"]
    }

    ingress {
        description = "Custom TCP"
        from _port = 3000
        to_port =10000
        protocol ="tcp"
        cidr_blocks =["0.0.0.0/0"]
    }

    ingress {
        description = "Allow Http"
        from _port = 80
        to_port =80
        protocol ="tcp"
        cidr_blocks =["0.0.0.0/0"]
    }

    ingress {
        description = "Allow HTTPS"
        from _port = 443
        to_port =443
        protocol ="tcp"
        cidr_blocks =["0.0.0.0/0"]
    }

    ingress {
        description = "custom TCP for Kubernates"
        from _port = 6443
        to_port =6443
        protocol ="tcp"
        cidr_blocks =["0.0.0.0/0"]
    }

    ingress {
        description = "Mail Notification"
        from _port = 465
        to_port =465
        protocol ="tcp"
        cidr_blocks =["0.0.0.0/0"]
    }

    ingress {
        description = "Nodeport"
        from _port = 30000
        to_port =32767
        protocol ="tcp"
        cidr_blocks =["0.0.0.0/0"]
    }

    engress {
        from _port = 0
        to_port =0
        protocol ="-1"
        cidr_blocks =["0.0.0.0/0"]
    }

}