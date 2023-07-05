# Copyright (c) HashiCorp, Inc.

variable "waypoint_project" {
  description = "Name of the waypoint project, to be used in all resource names."
  type        = string
}

variable "tfc_org" {
  description = "Name of tfc org."
  type = string
}
