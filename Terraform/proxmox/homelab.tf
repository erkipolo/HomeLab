resource "proxmox_lxc" "ct00" {
  cores           = 1
  cpulimit        = 0
  cpuunits        = 100
  hostname        = "dns"
  memory          = 1024
  nameserver      = "192.168.56.10"
  onboot          = true
  ostemplate      = "local:vztmpl/debian-13-standard_13.1-2_amd64.tar.zst"
  ssh_public_keys = var.ct_ssh_public_key
  searchdomain    = "homelab.cu"
  start           = true
  swap            = 1024
  target_node     = "pve"
  unprivileged    = true
  vmid            = 700
  features {
    nesting = true
  }
  network {
    bridge   = "vmbr0"
    firewall = true
    ip       = "192.168.56.10/24"
    name     = "eth0"
  }
  rootfs {
    size    = "32G"
    storage = "local-lvm"
  }
}

resource "proxmox_lxc" "ct01" {
  cores           = 1
  cpulimit        = 0
  cpuunits        = 100
  hostname        = "wiki"
  memory          = 1024
  nameserver      = "192.168.56.10"
  onboot          = true
  ostemplate      = "local:vztmpl/debian-13-standard_13.1-2_amd64.tar.zst"
  ssh_public_keys = var.ct_ssh_public_key
  searchdomain    = "homelab.cu"
  start           = true
  swap            = 1024
  target_node     = "pve"
  unprivileged    = true
  vmid            = 701
  features {
    nesting = true
  }
  network {
    bridge   = "vmbr0"
    firewall = true
    ip       = "192.168.56.11/24"
    name     = "eth0"
  }
  rootfs {
    size    = "32G"
    storage = "local-lvm"
  }
}

resource "proxmox_lxc" "ct10" {
  cores           = 1
  cpulimit        = 0
  cpuunits        = 100
  hostname        = "ct10"
  memory          = 1024
  nameserver      = "127.0.0.1"
  onboot          = true
  ostemplate      = "local:vztmpl/debian-13-standard_13.1-2_amd64.tar.zst"
  ssh_public_keys = var.ct_ssh_public_key
  searchdomain    = "homelab.cu"
  start           = true
  swap            = 1024
  target_node     = "pve"
  unprivileged    = true
  vmid            = 710
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
    ip       = "192.168.56.12/24"
    name     = "eth1"
  }
  rootfs {
    size    = "32G"
    storage = "local-lvm"
  }
}

resource "proxmox_lxc" "ct20" {
  cores           = 2
  cpulimit        = 0
  cpuunits        = 100
  hostname        = "ct02"
  memory          = 2048
  nameserver      = "127.0.0.1"
  onboot          = true
  ostemplate      = "local:vztmpl/debian-13-standard_13.1-2_amd64.tar.zst"
  ssh_public_keys = var.ct_ssh_public_key
  searchdomain    = "homelab.cu"
  start           = true
  swap            = 2048
  target_node     = "pve"
  unprivileged    = true
  vmid            = 720
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
    storage = "local-lvm"
  }
}

