variable profile{}
variable region{}
variable ami{}
variable instance_type{}
variable key_pair{}

#Utilizing locals to use the same tags for other resources
locals{
    owner = "florecita"
    service = "test-ec2"
}

locals{
    common_tags = {
        Owner = local.owner
        Service = local.service

    }
}