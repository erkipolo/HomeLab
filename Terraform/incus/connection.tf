provider "incus" {
  generate_client_certificates = true
  accept_remote_certificate    = true
  default_remote               = "local"

  remote {
    name    = "local"
    address = "unix://"
  }
}
