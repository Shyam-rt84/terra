terraform {
  required_providers {
    linux = {
      source = "TelkomIndonesia/linux"
      version = "0.7.0"
    }
  }
}

provider "linux" {
    host     = "192.168.88.128"
    port     = 22
    user     = "ubuntu"
    password = "root123"
}

resource "linux_file" "unnatifile" {
    path = "/home/ubuntu/terra/myrestfile"
    owner = 1000
    group = 1000
    mode = "755"
}
