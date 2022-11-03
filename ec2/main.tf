resource "aws_instance" "webserver" {

  ami = "ami-089a545a9ed9893b6"
  instance_type = var.instance_type
  key_name = "venu"
  vpc_security_group_ids = [aws_security_group.web-sg.id]
  associate_public_ip_address = true
  root_block_device {
    volume_type = "gp2"
    volume_size = "30"
    delete_on_termination = false

}

 
  tags = {
    Name = "ExampleEC2Instance"
  }
}

output "IPAddress" {
  value = "${aws_instance.webserver.public_ip}"
}
