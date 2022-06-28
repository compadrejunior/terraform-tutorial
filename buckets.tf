/*
 * File: s3.tf
 * Project: terraform
 * File Created: Wednesday, 10th November 2021 2:47:27 pm
 * Author: José Compadre Junior (jose.compadre@oatsolutions.com.br)
 * -----
 * Last Modified: Thursday, 11th November 2021 12:37:49 pm
 * Modified By: José Compadre Junior (jose.compadre@oatsolutions.com.br>)
 * -----
 * Copyright (c) 2021 OAT Solutions, OAT Solutions. All rights reserved.
 */
variable "bucket_name" {
  description = "Bucket name for S3"
}
resource "aws_s3_bucket" "variable_s3_bucket" {
  bucket = var.bucket_name
}
