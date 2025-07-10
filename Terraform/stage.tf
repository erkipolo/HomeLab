resource "proxmox_lxc" "ct-test" {
  count           = 4
  cores           = var.cores
  hostname        = "${var.ct-name}-${var.initial_id + count.index + 1}"
  memory          = var.memory
  nameserver      = "${var.dns_servers}"
  onboot          = true
  ostemplate      = "local:vztmpl/${var.ostemplate}"
  password        = "${var.root_pass}"
  searchdomain    = "${var.search_domain}"
  ssh_public_keys = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIAuYvTBdwbsWoVKwMstwULBgy0/hdkrphgiVyU75rBc ansible"
  start           = true
  swap            = var.swap
  target_node     = "${var.node_name}"
  unprivileged    = true
  vmid            = var.initial_id + count.index + 1
  features {
    nesting = true
  }
  network {
    bridge   = "vmbr0"
    firewall = true
    gw       = "192.168.56.1"
    ip       = "${var.private_subnet}${var.initial_ip + count.index + 1}${var.private_subnet_mask}"
    name     = "eth0"
  }
  rootfs {
    size    = "2G"
    storage = "local-lvm"
  }
}

