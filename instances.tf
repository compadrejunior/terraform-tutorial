/*
 * File: resource.tf
 * Project: terraform
 * File Created: Wednesday, 10th November 2021 6:27:08 pm
 * Author: José Compadre Junior (jose.compadre@oatsolutions.com.br)
 * -----
 * Last Modified: Thursday, 11th November 2021 12:38:17 pm
 * Modified By: José Compadre Junior (jose.compadre@oatsolutions.com.br>)
 * -----
 * Copyright (c) 2021 OAT Solutions, OAT Solutions. All rights reserved.
 */

resource "aws_instance" "terraformed_instance" { 
  ami = "ami-07983613af1a3ef44"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform"
  }
  security_groups = [ "sg-50d87965" ]
  availability_zone = "us-east-1e"
  ebs_block_device {
    device_name = "/dev/sdg"
    volume_size = 30
    volume_type = "gp2"
    delete_on_termination = false
  }
}