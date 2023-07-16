resource "aws_key_pair" "dev_key" {
  key_name   = "pcskey"
  public_key = file("~/.ssh/pcskey.pub")
}