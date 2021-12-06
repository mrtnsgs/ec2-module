resource "aws_key_pair" "ec2-key" {
  key_name    = "ec2-key"
  public_key  = file("~/.ssh/olds/id_rsa.pub")
}

resource "aws_instance" "ec2" {
  count                 = var.instance_count
  ami                   = var.ami
  instance_type         = var.instance_type
  key_name              = aws_key_pair.ec2-key.key_name 
  security_groups       = ["${aws_security_group.ec2-sec.name}"]

  tags  = {
    Name  = element(var.instance_tags, count.index)
  }
}

/*
resource "aws_volume_attachment" "this" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.this.id
  instance_id = module.ec2.id
}

resource "aws_ebs_volume" "this" {
  availability_zone = local.availability_zone
  size              = 1

  tags = local.tags
}
*/
