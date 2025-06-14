resource "yandex_compute_disk" "boot-disk-vm1" {
    name = "boot-disk-1"
    type = "network-hdd"
    zone = "${var.av_zone}"
    size = "${var.boot_disk_size}"
    image_id = "${var.ubuntu_image_id}"
}