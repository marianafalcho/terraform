provider "aws" {
    profile = "default"
    region = "us-east-1"
}
terraform{
    backend "s3" {
        bucket = "mariana-ias"
        key = "mariana-ias/terraform.tfstate"
        region = "us-east-1"


    }
}