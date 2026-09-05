variable "vpc_id" {
  type    = string
  default = "vpc-084a10f473fb0a8bb"

}

variable "subnet_ranges" {
  type    = list(string)
  default = ["subnet-094550475922cd8b7", "subnet-0a5ed46193c043c4c", "subnet-085fe175dbfb2e30f"]
}

variable "availability_zones" {
  description = "The availability zones for the subnets"
  default     = ["ca-central-1d", "ca-central-1a", "ca-central-1b"]
}
