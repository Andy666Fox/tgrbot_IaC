resource "local_file" "ansible_inentory" {
  filename = "../ansible/inventory.ini"
  content = <<-EOT
    [all]
    ${yandex_compute_instance.tgrbot-vm1.network_interface.0.nat_ip_address} ansible_user=$USER
  EOT

  depends_on = [ yandex_compute_instance.tgrbot-vm1 ]
}