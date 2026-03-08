# HomeLab
## Level structure
- ### debian
  - ### proxmox
  - ### server
    - ### lamp
      - ### nextcloud

## Inventory
- ### Nextwork:`192.168.56.0/24`
- ### laptop:`192.168.56.1`
- ### pve:`192.168.56.9`
- ### ct00:`192.168.56.10`
- ### ct01:`192.168.56.11`
- ### vm00:`192.168.56.20`
- ### vm01:`192.168.56.21`

## Domain Name
- ### homelab.cu

## E-mail Notification
- ### admin@homelab.cu

## VirtualBox:
  - ### Ethernet
    - ### `eth0 = OnlyHost`
    - ### `eth1 = NAT`

## Terraform:
  - ### Syntax
    - ### `terraform init`
    - ### `terraform (plan | apply | destroy) [-target='proxmox_lxc.hostname']`
  - ### Proxmox (v9) require
    - ### `pveum role add terraform -privs "Datastore.AllocateSpace, Datastore.Audit, Pool.Allocate, SDN.Use, Sys.Audit, Sys.Console, Sys.Modify, Sys.PowerMgmt, VM.Allocate, VM.Audit, VM.Clone, VM.Config.CDROM, VM.Config.CPU, VM.Config.Cloudinit, VM.Config.Disk, VM.Config.HWType, VM.Config.Memory, VM.Config.Network, VM.Config.Options, VM.Migrate, VM.PowerMgmt"`
    - ### `pveum group add terraform`
    - ### `pveum aclmod / -group terraform -role terraform`
    - ### `pveum user add terraform@pam -group terraform`
    - ### `pveum user token add terraform@pam provider --privsep=0`

## Ansible:
  - ### Inventory
    - ### `ansible-inventory --list`
    - ### `ansible all --list-hosts`
  - ### Ping
    - ### `ansible all -m ping [-l hostname]`
  - ### Gather Facts
    - ### `ansible all -m gather_facts [-l hostname]`
  - ### Playbook
    - ### `ansible-playbook --syntax-check stage.yml`
    - ### `ansible-playbook [-l hostname] [-t 'upgrade'] stage.yml`
  - ### Files require by some roles
    - ### Nextcloud
      - ### [nextcloud-32.0.2.zip](https://download.nextcloud.com/server/releases/nextcloud-32.0.2.zip)
      - ### [calendar-v5.5.15.tar.gz](https://github.com/nextcloud-releases/calendar/releases/download/v5.5.15/calendar-v5.5.15.tar.gz)
      - ### [contacts-v7.3.16.tar.gz](https://github.com/nextcloud-releases/contacts/releases/download/v7.3.16/contacts-v7.3.16.tar.gz)
      - ### [mail-v5.7.1.tar.gz](https://github.com/nextcloud-releases/mail/releases/download/v5.7.1/mail-v5.7.1.tar.gz)
      - ### [documentserver_community-0.2.1.tar.gz](https://github.com/chadek/documentserver_community/releases/download/v0.2.1/documentserver_community.tar.gz)
      - ### [onlyoffice-9.12.0.tar.gz](https://github.com/ONLYOFFICE/onlyoffice-nextcloud/releases/download/v9.12.0/onlyoffice.tar.gz)
      - ### [nextcloud-rule-exclusions-plugin-1.5.0.tar.gz](https://github.com/coreruleset/nextcloud-rule-exclusions-plugin/archive/refs/tags/v1.5.0.tar.gz)

