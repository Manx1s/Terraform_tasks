locals {
    ssh_public_key = file("/home/anton/.ssh/id_ed25519.pub")

    common_metadata = {
        serial-port-enable = "true"
        ssh-keys = "ubuntu:${local.ssh_public_key}"
    }
}