resource "aws_internet_gateway" "pcs_gw" {
  vpc_id = aws_vpc.pcs_dev.id

  tags = {
    Name = "dev_gw"
  }
}