resource "yandex_compute_instance" "tgrbot-vm1" {
    name = "tgrbot-vm1"
    platform_id = "standart-v3"
    zone = "${var.av_zone}"

    resources {
        cores = "2"
        memory = "2"
    }

    boot_disk {
        disk_id = yandex_compute_disk.boot-disk-vm1.id
    }

    network_interface {
        subnet_id = "e2ldgqcbssceluk4rrho"
        nat = true
    }

    metadata = {
        fqdn = "tgrbot-vm1.${var.service_dns_zone}"
        user-data = "${file("meta.txt")}"
    }
}