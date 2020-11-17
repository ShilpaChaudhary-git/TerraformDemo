# Create a new instance of the latest Ubuntu 20.04 on an
# t2.micro node with an AWS Tag naming it "HelloWorld"
provider "aws" {
  region = "us-west-2"
  access_key = "AKIAVPK5R3Q6WB3EIZEW"
  secret_key = "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"
}


resource "aws_instance" "web" {
  ami           = "ami-0528a5175983e7f28"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
