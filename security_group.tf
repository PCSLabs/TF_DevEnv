# This security group will allow anyone to connect to the EC2, this config should be changed to specify a static IP.
resource "aws_security_group" "pcs_sg" {
  name        = "dev-sg"
  description = "Dev environment security group for public access."
  vpc_id      = aws_vpc.pcs_dev.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}