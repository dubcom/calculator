
# Criar uma instância de VM no GCP
resource "google_compute_instance" "vm" {
  name         = "vm"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // IP Público
    }
  }

  metadata_startup_script = <<EOT
    #!/bin/bash
    apt-get update
    apt-get install -y git
   

# Instalar o Git na instância de VM
resource "null_resource" "install_git" {
  connection {
    type        = "ssh"
    user        = "meu-usuario"
    host        = google_compute_instance.vm.network_interface.0.access_config.0.assigned_nat_ip
    private_key = file("~/.ssh/id_rsa")
  }

  provisioner "remote-exec" {
    inline = [
      "apt-get update",
      "apt-get install -y git",
    ]
  }
}

# Clonar o repositório do projeto na instância de VM
resource "null_resource" "clone_repository" {
  connection {
    type        = "ssh"
    user        = "meu-usuario"
    host        = google_compute_instance.vm.network_interface.0.access_config.0.assigned_nat_ip
    private_key = file("~/.ssh/id_rsa")
  }

  provisioner "remote-exec" {
    inline = [
      "git clone https://github.com/dubcom/calculator.git",
    ]
  }
}

# Instalar as dependências do projeto na instância de VM
resource "null_resource" "install_dependencies" {
  connection {
    type        = "ssh"
    user        = "meu-usuario"
    host        = google
_compute_instance.vm.network_interface.0.access_config.0.assigned_nat_ip
    private_key = file("~/.ssh/id_rsa")
  }

  provisioner "remote-exec" {
    inline = [
      "cd calculator",
      "npm install",
    ]
  }
}

# Executar o projeto na instância de VM

resource "null_resource" "run_project" {
  connection {
    type        = "ssh"
    user        = "meu-usuario"
    host        = google_compute_instance.vm.network_interface.0.access_config.0.assigned_nat_ip
    private_key = file("~/.ssh/id_rsa")
  }

  provisioner "remote-exec" {
    inline = [
      "cd calculator",
      "npm start",
    ]
  }
}

