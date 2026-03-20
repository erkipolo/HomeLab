resource "proxmox_lxc" "ct00" {
  cores           = 1
  cpulimit        = 0
  cpuunits        = 100
  hostname        = "repos"
  memory          = 512
  nameserver      = "127.0.0.1"
  onboot          = true
  ostemplate      = "local-dir:vztmpl/debian-13-standard_13.1-2_amd64.tar.zst"
  ssh_public_keys = var.ct_ssh_public_key
  searchdomain    = "homelab.cu"
  start           = true
  swap            = 512
  target_node     = "GDMB"
  unprivileged    = true
  vmid            = 500
  features {
    nesting = true
  }
  network {
    bridge   = "vmbr0"
    firewall = true
    ip       = "172.32.40.50/26"
    name     = "eth0"
  }
  rootfs {
    size    = "250G"
    storage = "local-dir"
  }
}

resource "proxmox_lxc" "ct01" {
  cores           = 1
  cpulimit        = 0
  cpuunits        = 100
  hostname        = "repo-proxmox"
  memory          = 512
  nameserver      = "127.0.0.1"
  onboot          = true
  ostemplate      = "local-dir:vztmpl/debian-13-standard_13.1-2_amd64.tar.zst"
  ssh_public_keys = var.ct_ssh_public_key
  searchdomain    = "homelab.cu"
  start           = true
  swap            = 512
  target_node     = "GDMB"
  unprivileged    = true
  vmid            = 501
  features {
    nesting = true
  }
  network {
    bridge   = "vmbr0"
    firewall = true
    ip       = "172.32.40.51/26"
    name     = "eth0"
  }
  rootfs {
    size    = "40G"
    storage = "local-dir"
  }
}

resource "proxmox_lxc" "ct02" {
  cores           = 1
  hostname        = "ct01"
  memory          = 512
  nameserver      = "127.0.0.1"
  onboot          = true
  ostemplate      = "local-dir:vztmpl/debian-13-standard_13.1-2_amd64.tar.zst"
  ssh_public_keys = var.ct_ssh_public_key
  searchdomain    = "homelab.cu"
  start           = true
  swap            = 512
  target_node     = "GDMB"
  unprivileged    = true
  vmid            = 701
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
    ip       = "192.168.56.11/24"
    name     = "eth1"
  }
  rootfs {
    size    = "32G"
    storage = "local-dir"
  }
}

resource "proxmox_lxc" "ct03" {
  cores           = 2
  hostname        = "ct02"
  memory          = 2048
  nameserver      = "127.0.0.1"
  onboot          = true
  ostemplate      = "local-dir:vztmpl/debian-13-standard_13.1-2_amd64.tar.zst"
  ssh_public_keys = var.ct_ssh_public_key
  searchdomain    = "homelab.cu"
  start           = true
  swap            = 2048
  target_node     = "GDMB"
  unprivileged    = true
  vmid            = 702
  features {
    nesting = true
  }
  network {
    bridge   = "vmbr0"
    firewall = true
    ip       = "192.168.56.12/24"
    name     = "eth0"
  }
  rootfs {
    size    = "32G"
    storage = "local-dir"
  }
}
