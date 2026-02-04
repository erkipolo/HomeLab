resource "proxmox_lxc" "srv01" {
  cores           = 1
  hostname        = "srv01"
  memory          = 512
  nameserver      = "192.168.56.1"
  onboot          = true
  ostemplate      = "local:vztmpl/debian-13-standard_13.1-2_amd64.tar.zst"
  ssh_public_keys = var.ct_ssh_public_key
  searchdomain    = "homelab.cu"
  start           = true
  swap            = 512
  target_node     = "pve"
  unprivileged    = true
  vmid            = 700
  features {
    nesting = true
  }
  network {
    bridge   = "vmbr0"
    firewall = true
    ip       = "192.168.56.2/24"
    name     = "eth0"
  }
  rootfs {
    size    = "100G"
    storage = "local-lvm"
  }
}
