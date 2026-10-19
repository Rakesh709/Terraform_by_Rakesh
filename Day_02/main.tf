terraform{
    required_providers{
        aws ={
            source = "hashicorp/aws"
            version = "~>6.0"
        }
    }
}

# learn about the versioning 

provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
}

# resource "aws_ec2_host" "my_ec2"{
#     vpc_id = aws_vpc.main_vpc.id
# }