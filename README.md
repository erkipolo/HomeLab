# HomeLab
Inventory
  Nextwork
    192.168.56.0/24
  laptop
    192.168.56.1
  pve
    192.168.56.9
  ct00
    192.168.56.10
  ct01
    192.168.56.11
  vm00
    192.168.56.20
  vm01
    192.168.56.21

Domain Name
  homelab.cu

E-mail Notification
  admin@homelab.cu

VirtualBox:
  Ethernet
    eth0=OnlyHost
    eth1=NAT

Proxmox (v9):
  pveum role add terraform -privs "Datastore.AllocateSpace, Datastore.Audit, Pool.Allocate, SDN.Use, Sys.Audit, Sys.Console, Sys.Modify, Sys.PowerMgmt, VM.Allocate, VM.Audit, VM.Clone, VM.Config.CDROM, VM.Config.CPU, VM.Config.Cloudinit, VM.Config.Disk, VM.Config.HWType, VM.Config.Memory, VM.Config.Network, VM.Config.Options, VM.Migrate, VM.PowerMgmt"
  pveum group add terraform
  pveum aclmod / -group terraform -role terraform
  pveum user add terraform@pam -group terraform
  pveum user token add terraform@pam provider --privsep=0

Terraform:
  terraform init
  terraform (plan | apply | destroy) [-target='proxmox_lxc.hostname']

Ansible:
  Inventory
    ansible-inventory --list
    ansible all --list-hosts
  Ping
    ansible all -m ping [-l hostname]
  Gather Facts
    ansible all -m gather_facts [-l hostname]
  Playbook
    ansible-playbook --syntax-check stage.yml
    ansible-playbook [-l hostname] [-t 'upgrade'] stage.yml

Files by Roles:
  Nextcloud
    nextcloud-32.0.2.zip
    documentserver_community-0.2.2.tar.gz
    onlyoffice-9.12.0.tar.gz
