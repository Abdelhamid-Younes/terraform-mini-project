data "aws_ami" "ubuntu_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["*ubuntu-bionic*"]
  }
}

resource "aws_instance" "my_ec2" {
  ami             = data.aws_ami.ubuntu_ami.id
  instance_type   = var.instance_type
  key_name        = "devops-hamid"
  security_groups = ["${var.sg_name}"]
  tags            = var.ec2_name_tag
  availability_zone = var.az

  root_block_device {
    
  }