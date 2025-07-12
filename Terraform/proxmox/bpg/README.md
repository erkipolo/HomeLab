# Terraform
## Provehedores Requeridos:
  - bpg/proxmox
## Otros requerimientos:
  - Se requiere token de proxmox
  GUI:
    Datacenter -> Permissions -> Roles -> Create
      name = terraform
      privileges = Datastore.AllocateSpace, Datastore.Audit, Pool.Allocate, SDN.Use, Sys.Audit, Sys.Console, Sys.Modify, Sys.PowerMgmt, VM.Allocate, VM.Audit, VM.Clone, VM.Config.CDROM, VM.Config.CPU, VM.Config.Cloudinit, VM.Config.Disk, VM.Config.HWType, VM.Config.Memory, VM.Config.Network, VM.Config.Options, VM.Migrate, VM.Monitor, VM.PowerMgmt
    Datacenter -> Permissions -> Groups -> Create
      name = terraform
    Datacenter -> Permissions -> Add -> Group Permissions
      Path = /
      Group = terraform
      Role = terraform
    Datacenter -> Permissions -> Users -> Add
      username = terraform
      group = terraform
    Datacenter -> Permissions -> API Tokens -> Add
      user = terraform@pam
      TokenID = terraform
      Privilege Separation = disable
  CLI:
    pveum role add TestTerraform -privs "Datastore.AllocateSpace, Datastore.Audit, Pool.Allocate, SDN.Use, Sys.Audit, Sys.Console, Sys.Modify, Sys.PowerMgmt, VM.Allocate, VM.Audit, VM.Clone, VM.Config.CDROM, VM.Config.CPU, VM.Config.Cloudinit, VM.Config.Disk, VM.Config.HWType, VM.Config.Memory, VM.Config.Network, VM.Config.Options, VM.Migrate, VM.Monitor, VM.PowerMgmt"
    pveum group add TestTerraform
    pveum aclmod / -group TestTerraform -role TestTerraform
    pveum user add TestTerraform@pam -group TestTerraform
    ????
