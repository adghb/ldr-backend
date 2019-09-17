provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "tf-sls-example"
  acl    = "private"

/*  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
*/
}

 
remote_state {
  backend "s3" {
    bucket = "tf-sls-example"
    key    = "remote/terraform.tfstate"
    region = "ap-south-1"
  }
}


