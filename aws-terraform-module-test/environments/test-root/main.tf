module "network_tokyo" {
  source = "../../modules/network"

  environment = "dev"
  system_name = "tokyo"
  vpc_cidr    = "10.5.0.0/16"

  subnet_map_list = [
    { "name" = "public-1a", "cidr" = "10.5.1.0/24", "az_name" = "ap-northeast-1a" },
    { "name" = "private-1a", "cidr" = "10.5.2.0/24", "az_name" = "ap-northeast-1a" },
    { "name" = "public-1c", "cidr" = "10.5.3.0/24", "az_name" = "ap-northeast-1c" },
    { "name" = "private-1c", "cidr" = "10.5.4.0/24", "az_name" = "ap-northeast-1c" },
  ]
}