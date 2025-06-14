resource "yandex_compute_instance" "tgrbot-vm1" {
    name = "tgrbot-vm1"
    platform_id = "standart-v3"
    zone = "${var.av_zone}"

    resources {
        cores = "2"
        memory = "2"
    }

    boot_disk {
        disk_id = yandex_compute_disk.boot_disk-vm1.id
    }

    network_interface {
        subnet_id = e2ldgqcbssceluk4rrho
        nat = true
    }

    metadata = {
        fqdn = "tgrbot-vm1.${var.service_dns_zone}"
        user_data = "#cloud-config\nusers:\n - name: andy-cp\n groups: sudo\n shell: /bin/bash
        sudo: 'ALL=(ALL) NOPASSWD: ALL'\nssh-authorized-keys:\n - ${file("~/.ssh/id_ed25519.pub")}"
    }
}