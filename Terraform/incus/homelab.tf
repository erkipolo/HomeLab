resource "incus_instance" "testing" {
  name      = "testing"
  image     = "debian/trixie/amd64"
  config = {
    "boot.autostart" = true
  }
  profiles  = ["default"]
}
