resource "yandex_compute_instance" "tgrbot-vm1" {
    name = "tgrbot-vm1"
    platform_id = "standard-v1"
    zone = "${var.av_zone}"

    resources {
        cores = "4"
        memory = "4"
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
        user-data = "${file("./meta.txt")}"
    }
}

# resource "yandex_compute_instance" "jenkins-server" {
#     name = "jenkins-server"
#     platform_id = "standard-v1"
#     zone = "${var.av_zone}"

#     resources {
#         cores = "3"
#         memory = "4"
#     }

#     boot_disk {
#         disk_id = yandex_compute_disk.boot-disk-jenkins.id
#     }

#     network_interface {
#         subnet_id = "e2ldgqcbssceluk4rrho"
#         nat = true
#     }

#     metadata = {
#         fqdn = "jenkins-server.${var.service_dns_zone}"
#         user-data = "${file("./meta.txt")}"
#     }
# }