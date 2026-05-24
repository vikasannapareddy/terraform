resource "aws_instance" "Robhoshop" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow_all.id]
   #vpc_security_group_ids = local.sg_id
    tags = {
        Name = "Robhoshop1st_instance"
    }

}
resource "aws_security_group" "allow_all"{
    name = "allow_all"
    description = "Allow Tls inbound traffic and all outbound traffic"
    ingress{
        from_port = 0
        to_port =0
        protocol = "-1"
        cidr_blocks =["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]

    }
    egress{
        from_port = 0
        to_port =0
        protocol = "-1"
        cidr_blocks =["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]


    }
    lifecycle {
      create_before_destroy = true
    }
    tags = {
    Name = "allow_all"
      }
}