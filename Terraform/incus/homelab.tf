resource "incus_instance" "test1" {
  name      = "test1"
  image     = "debian/trixie/amd64"
  config = {
    "boot.autostart" = true
  }
  profiles  = ["default"]
}
