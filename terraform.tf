terraform{
    required_providers{
        aws={
            source=“hasicorp/aws”
            version=“~>4.16”
        }
    }
    required_providers=“>=1.2.0”
}
provider “aws”{
    region = “us-west-2”
}
resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_demo"
  }
}