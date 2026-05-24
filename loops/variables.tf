variable "ami_id"{
    type  = string
    default = "ami-0220d79f3f480ecf5"
    description = "AMIid for joindevops redehat9"

}
variable "instance_type"{
    default ="t3.micro"
}
variable "ec2-tags"{
    type = map(string)
    default = {
        Name = "roboshop"
        purpose = "variable_demo"
    
    }
}
variable "sg_name"{
    default = "allow_all"
}
variable "sg_description"{
    default = "allow all traffic"
}
variable "from_port"{
    default = 0
}
variable "to_port"{
    default = 0
}
variable "cidr_blocks"{
    type = list(string)
    default = ["0.0.0.0/0"]
}
variable "sg_tags"{
    default = {
        Name = "allow_all"
        purpose = "variable_demo"
    
    }
}
variable "environment"{
    default = "pod"
}
variable "instance"{
    type = list(string)
    default = ["mongodb","redis","mysql","rabbitmq"]
}
variable "zone_id"{
    default = "Z014152013UT6O7WG2G8R"
}
variable "domain_name"{
    default = "vikaskonda.in"
}