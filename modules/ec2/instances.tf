resource "aws_instance" "web" {
  ami = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  subnet_id = "${var.subnet_id}"
  count = "2"

  tags = {
    Name = "test_instance"
  }
}