terraform{
    required_providers{
        aws={
            source=“hasicorp/aws”
            version=“>4.26”
        }
    }
    required_providers=“>=1.2.0”
}
provider “ aws”{
    region=“us_east2”
}
resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "terraform_demo1"
  }
}