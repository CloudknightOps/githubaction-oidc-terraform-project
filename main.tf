data "aws_ebs_volume" "production_volume" {
  most_recent = true

  filter {
    name   = "volume-type"
    values = ["gp2"]
  }

  filter {
    name   = "tag:Name"
    values = [var.volume_name]
  }
}

resource "aws_ebs_snapshot" "production_snapshot" {
  volume_id = data.aws_ebs_volume.production_volume.id

  tags = {
    Name = var.snapshot_name
  }
}