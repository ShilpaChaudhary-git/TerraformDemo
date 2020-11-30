# Create a new instance of the latest Ubuntu on an
# t2.micro node with an AWS Tag naming it "HelloWorld"
provider "aws" {
  region = "us-west-2"

}


resource "aws_instance" "web" {
  ami           = "ami-0528a5175983e7f28"
  instance_type = "t2.micro"
  key_name = "jenkins-pipeline"

  tags = {
    Name = "HelloWorld"
  }
}
