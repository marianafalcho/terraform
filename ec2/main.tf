# Specifyin provider from which we will use the resources type and data
provider "aws" {
    profile = var.profile
    region =  var.region
}

#Utilizing S3 backend to store tfstate
terraform{
    backend "s3" {
        bucket = "mariana-ias"
        key = "mariana-ias/terraform.tfstate"
        region = "us-east-1"


    }
}