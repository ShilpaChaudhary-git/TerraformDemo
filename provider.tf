# Create a new instance of the latest Ubuntu 20.04 on an
# t2.micro node with an AWS Tag naming it "HelloWorld"
provider "aws" {
  region = "us-west-2"
  access_key = "key:AKIAVPK5R3Q6WB3EIZEW"
  secret_key = "key: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"
}


resource "aws_instance" "web" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
