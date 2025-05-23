variable "system_name" {
  type        = string
  description = "システム名称：本システムの名称を指定。一意な名称にすること"
}

variable "environment" {
  type        = string
  description = "環境面の名前：dev, stg, prdなどを指定。一意な名称にすること"
}

variable "vpc_cidr" {
  type        = string
  description = "VPCのCIDRブロック"
}

variable "subnet_map_list" {
  type        = list(map(string))
  description = "サブネットのMAP"
}