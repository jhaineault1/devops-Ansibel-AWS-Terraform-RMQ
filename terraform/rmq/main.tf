provider "aws" {
  region = "us-west-1"
	profile = var.profile
}

resource "aws_instance" "rmq" {
	ami = "ami-07ebfd5b3428b6f4d"
	instance_type = "t2.micro"
	key_name = "rabbitmq"
	vpc_security_group_ids = ["sg-0f59a0c84dd80befa"]

	tags = {
		Name = var.name
		group = var.group
	}
}

