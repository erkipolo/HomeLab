resource "proxmox_lxc" "cts" {
  cores           = 1
  hostname        = "cts"
  memory          = 512
  nameserver      = "192.168.56.1 8.8.8.8"
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
    ip       = "192.168.56.8/24"
    name     = "eth1"
  }
  network {
    bridge   = "vmbr1"
    firewall = true
    ip       = "dhcp"
    name     = "eth0"
  }
  rootfs {
    size    = "100G"
    storage = "local-lvm"
  }
}

resource "proxmox_lxc" "server" {
  cores           = 1
  hostname        = "server"
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
  vmid            = 701
  features {
    nesting = true
  }
  network {
    bridge   = "vmbr0"
    firewall = true
    ip       = "192.168.56.5/24"
    name     = "eth0"
  }
  rootfs {
    size    = "100G"
    storage = "local-lvm"
  }
}

resource "proxmox_lxc" "client" {
  cores           = 1
  hostname        = "client"
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
  vmid            = 702
  features {
    nesting = true
  }
  network {
    bridge   = "vmbr0"
    firewall = true
    ip       = "192.168.56.6/24"
    name     = "eth0"
  }
  rootfs {
    size    = "100G"
    storage = "local-lvm"
  }
}
