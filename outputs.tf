output "dev_ip" {
    value = aws_instance.dev.public_ip
}

output "ami_OS" {
    value = data.aws_ami.server_ami.name
}