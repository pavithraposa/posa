 
variable "aws" {
    region = "${us-west-2}"
    access_key = "${AKIAJOY7V2RW5D6MEGWA}"
    secret_key = "${
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}"
 } 
resource "aws_instance" "web" {
  connection {
    user = "ubuntu"
    }
  subnet_id = "${subnet-86759fcf}"
  instance_type = "${t2.micro}"

  ami = "${ami-30e65350}"

  key_name = "${chef}"


  tags {
    "Name" = "${pavithra}"
  }} 

