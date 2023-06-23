# Get latest AMI ID for Amazon Linux2 OS
# Get Latest AWS AMI ID for Amazon2 Linux
data "aws_ami" "ubuntu" {
  most_recent	= true
  owners	= [ "099720109477" ]

  filter {
    name	= "name"
    values	= [ "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-2023*" ]
  }
  filter {
    name	= "root-device-type"
    values	= [ "ebs" ]
  }
  filter {
    name	= "virtualization-type"
    values	= [ "hvm" ]
  }
  filter {
    name	= "architecture"
    values	= [ "x86_64" ]
  }
}
