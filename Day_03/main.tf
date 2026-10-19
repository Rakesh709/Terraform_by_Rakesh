terraform {
   required_providers{
    aws={
        source="hashicorp/aws"
        version= "~>6.0"
    }
   }
}


provider "aws"{
    region = "us-east-1"
}

# create s3 
resource "aws_s3_bucket" "myterraformbucket" {
  bucket = "myteeraformbucketrakesh709"

  tags = {
    "Name" = "my bucket 2.0"
    "Environment" = "Test"
  }
}