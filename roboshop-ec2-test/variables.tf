variable "security_group_ids" {
    default = ["sg-0ba97e595a390cffc"]
}

variable "tags" {
    default = {
        Name = "roboshop-cart"
        Terraform = "true"
        Environment = "dev"
    }
}

variable "instance_type" {
    default = "t3.small"
}