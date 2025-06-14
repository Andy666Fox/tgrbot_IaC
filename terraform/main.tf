terraform {
    required_providers {
        yandex = {
            source = "yandex-cloud/yandex"
        }
    }
    required_version = ">= 0.13"
}

provider "yandex" {
    zone = "${var.av_zone}"
}

metadata {
    user-data = "${file(meta.txt)}"
}