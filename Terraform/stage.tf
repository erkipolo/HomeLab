resource "proxmox_lxc" "ct-test" {
  cores           = 1
  hostname        = "homelab-lxc-tf-docker0"
  memory          = 512
  nameserver      = "192.168.56.1"
  onboot          = true
  ostemplate      = "local:vztmpl/debian-12-standard_12.7-1_amd64.tar.zst"
  password        = "C0nfS3rv3r"
  searchdomain    = "homelab.cu"
  ssh_public_keys = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIAuYvTBdwbsWoVKwMstwULBgy0/hdkrphgiVyU75rBc ansible"
  start           = true
  swap            = 512
  target_node     = "pve"
  unprivileged    = true
  vmid            = 100
  features {
    nesting = true
  }
  mountpoint {
    key     = "0"
    mp      = "/var/www/html/"
    size    = "2G"
    slot    = 0
    storage = "local-lvm"
  }
  network {
    bridge   = "vmbr0"
    firewall = true
    gw       = "192.168.56.1"
    ip       = "192.168.56.40/24"
    name     = "eth0"
  }
  network {
    bridge   = "vmbr0"
    firewall = true
    ip       = "192.168.56.41/24"
    name     = "eth1"
  }
  network {
    bridge   = "vmbr0"
    firewall = true
    ip       = "dhcp"
    name     = "eth3"
  }
  rootfs {
    size    = "2G"
    storage = "local-lvm"
  }
}

