provider "google" {
  project = "hardy-binder-411706"
  region  = "us-central1"
}
 
module "vm_instance_1" {
  source                = "/home/pavantejayellaboyina/instance/vm_instance module"
  project_id            = "hardy-binder-411706"
  region                = "us-central1"
  zone                  = "us-central1-a"
  instance_name         = "instance-1"
  machine_type          = "n1-standard-1"
  image                 = "debian-cloud/debian-10"
  network               = "default"
  tags                  = ["web", "dev"]
  metadata              = {
    ssh-keys = "user:ssh-rsa your-public-ssh-key"
  }
}
 
module "vm_instance_2" {
  source                = "/home/pavantejayellaboyina/instance/vm_instance module"
  project_id            = "hardy-binder-411706"
  region                = "us-central1"
  zone                  = "us-central1-b"
  instance_name         = "instance-2"
  machine_type          = "n1-standard-2"
  image                 = "rhel-cloud/rhel-9"
  network               = "default"
  tags                  = ["db", "backend"]
  metadata              = {
    ssh-keys = "user:ssh-rsa your-public-ssh-key"
  }
}
 
module "vm_instance_3" {
  source                = "/home/pavantejayellaboyina/instance/vm_instance module"
  project_id            = "hardy-binder-411706"
  region                = "us-central1"
  zone                  = "us-central1-c"
  instance_name         = "instance-3"
  machine_type          = "n1-standard-4"
  image                 = "ubuntu-os-cloud/ubuntu-2004-lts"
  network               = "default"
  tags                  = ["cache", "frontend"]
  metadata              = {
    ssh-keys = "user:ssh-rsa your-public-ssh-key"
  }
}