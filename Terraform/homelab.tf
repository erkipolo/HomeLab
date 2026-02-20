resource "proxmox_lxc" "ct00" {
  cores           = 2
  hostname        = "ct00"
  memory          = 2048
  nameserver      = "8.8.8.8"
  onboot          = true
  ostemplate      = "local:vztmpl/debian-13-standard_13.1-2_amd64.tar.zst"
  ssh_public_keys = var.ct_ssh_public_key
  searchdomain    = "homelab.cu"
  start           = true
  swap            = 2048
  target_node     = "pve"
  unprivileged    = true
  vmid            = 700
  features {
    nesting = true
  }
  network {
    bridge   = "vmbr1"
    firewall = true
    ip       = "dhcp"
    name     = "eth0"
  }
  network {
    bridge   = "vmbr0"
    firewall = true
    ip       = "192.168.56.10/24"
    name     = "eth1"
  }
  rootfs {
    size    = "100G"
    storage = "local-lvm"
  }
}
