variable "node_name" {
  type = string
  description = "Nombre del nodo en que se hace el despliegue"
  default = "pve"
}
variable "initial_id" {
  type = number
  description = "VMID inicial para el despliegue"
  default = 200
}
variable "cores" {
  type = number
  description = "numero de nucleos"
  default = 1
}
variable "memory" {
  type = number
  description = "cantidad de memoria RAM"
  default = 512
}
variable "swap" {
  type = number
  description = "cantidad de memoria SWAP"
  default = 512
}
variable "dns_servers" {
  type = string
  description = "DNS servers"
  default = "192.168.56.1"
}
variable "search_domain" {
  type = string
  description = "dominio de busqueda"
  default = "homelab.cu"
}
variable "private_subnet" {
  type = string
  description = "sub red privada"
  default = "192.168.56."
}
variable "private_subnet_mask" {
  type = string
  description = "mascara de la sub red privada"
  default = "/24"
}
variable "initial_ip" {
  type = number
  description = "ip inicial de la sub red privada"
  default = 1
}
variable "ct-name" {
  type = string
  description = "Servers Name"
  default = "homelab-ct"
}
variable "ostemplate" {
  type = string
  description = "plantilla a desplegar"
  default = "debian-12-standard_12.7-1_amd64.tar.zst"
}
variable "root_pass" {
  type = string
  description = "contraseña de root"
  default = "C0nfS3rv3r"
  sensitive = true
}
