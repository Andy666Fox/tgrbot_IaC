resource "yandex_vpc_network" "tgrbot_vpc_network" {}

resource "yandex_vpc_subnet" "tgrbot_vpc_subnet" {
    zone = var.av_zone
    network_id = yandex_vpc_network.tgrbot_vpc_network.id 
    v4_cidr_blocks = ["10.5.0.0/24"]
}