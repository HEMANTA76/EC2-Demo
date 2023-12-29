# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  cloud {
    organization = "HEMANTA-TRV"
    workspaces {
      name = "EC2-Demo"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
     version = ">= 5.0.0"
    }
  }
required_version = ">= 1.2"
}