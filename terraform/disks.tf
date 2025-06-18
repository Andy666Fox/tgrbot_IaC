resource "yandex_compute_disk" "boot-disk-vm1" {
    name = "boot-disk-vm1"
    type = "network-hdd"
    zone = "${var.av_zone}"
    size = "${var.boot_disk_size}"
    image_id = "${var.ubuntu_image_id}"
}

# resource "yandex_compute_disk" "boot-disk-jenkins" {
#     name = "boot-disk-jenkins"
#     type = "network-hdd"
#     zone = "${var.av_zone}"
#     size = "${var.boot_disk_size}"
#     image_id = "${var.jenkins_image_id}"
# }