resource "local_file" "ansible_inventory" {
    content = templatefile("${path.module}/hosts.tftpl", {
        webservers = yandex_compute_instance.web-vm
        databases = values(yandex_compute_instance.db-vm)
        storage = [yandex_compute_instance.storage]
    })

    filename = "${path.module}/inventory.ini"
}