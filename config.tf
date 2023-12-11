#provider "aws" {
 #   region = "${var.AWS_REGION}"
#}

terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws" 
            version = "5.6.2"
        }
    }

# scenario 2 - using "s3" backend
backend "s3" {
    bucket = "terrtest"
    #key = "acme-demo-s3"
    region = "us-west-2"
    # the role is being assumed from the deployer role - so you will
    #role_arn = "arn:aws:iam::326535729404:role/env0-acme-assı
    # external_id = "value" # (optional) use ENVO_TERRAFORM_BACH
 }

}

provider "aws" {
region = "us-west-2"
}
