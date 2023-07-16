resource "aws_subnet" "pcs_public_subnet" {
  vpc_id                  = aws_vpc.pcs_dev.id
  cidr_block              = "10.123.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

  tags = {
    Name = "dev_public"
  }
}