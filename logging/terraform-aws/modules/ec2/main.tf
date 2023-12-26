resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  count         = var.instance_count
  user_data     = base64encode(file("${path.module}/user-data.sh"))

  root_block_device {
    volume_size = var.volume-size # Size in GB
    volume_type = "gp2"           # EBS volume type
  }

  vpc_security_group_ids = var.security_group_ids

  tags = merge(
    {
      Name        = "${var.prefix}-${var.environment}-${var.application}"
      Environment = var.environment
      Application = var.application
    },
    var.tags
  )
}
