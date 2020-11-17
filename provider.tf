# Create a new instance of the latest Ubuntu on an
# t2.micro node with an AWS Tag naming it "HelloWorld"
provider "aws" {
  region = "us-west-2"
 # access_key = "AKIAVPK5R3Q6WKJ6IAPP"
#secret_key = "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"
}


resource "aws_instance" "web" {
  ami           = "ami-0528a5175983e7f28"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
