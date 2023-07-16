resource "aws_route_table" "pcs_public_rt" {
  vpc_id = aws_vpc.pcs_dev.id

  tags = {
    Name = "dev_public_rt"
  }
}

resource "aws_route" "default_route" {
  route_table_id         = aws_route_table.pcs_public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.pcs_gw.id

}

resource "aws_route_table_association" "pcs_public_assoc" {
  subnet_id      = aws_subnet.pcs_public_subnet.id
  route_table_id = aws_route_table.pcs_public_rt.id
}