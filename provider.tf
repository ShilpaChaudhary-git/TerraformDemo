provider "aws" {
  access_key = "key:AKIAVPK5R3Q6WB3EIZEW"
  secret_key = "key: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"
  region " us-west-2"
}
resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}
