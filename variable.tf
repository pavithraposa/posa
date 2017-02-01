 
provider "aws" {
    region = "${var.aws_region}"
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
}
resource "aws_instance" "web" {
  connection {
    user = "ubuntu"
    }
  subnet_id = "${var.subnet_id}"
  instance_type = "${var.instance_type}"

  ami = "${var.aws_ami}"

  key_name = "${var.key_name}"


  tags {
    "Name" = "${var.instance_name}"
  }} 

