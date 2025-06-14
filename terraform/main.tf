terraform {
    required_providers {
        yandex = {
            source = "yandex-cloud/yandex"
        }
    }
    required_version = ">= 0.12"
}

provider "yandex" {
    zone = "${var.av_zone}"
}