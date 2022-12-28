# Configure o provedor do Google Cloud
provider "google" {
  project = "my-Calculator"
  region  = "us-central1"
}

# Crie o bucket de armazenamento
resource "google_storage_bucket" "project_bucket" {
  name = "my-project-bucket"
  location = "us-central1"
  storage_class = "REGIONAL"
}

# Faça o upload dos arquivos do projeto para o bucket
resource "google_storage_bucket_object" "project_files" {
  count     = length(var.files)
  bucket    = google_storage_bucket.project_bucket.name
  name      = var.files[count.index]
  source    = "build/${var.files[count.index]}"
}

# Defina uma variável para os arquivos do projeto
variable "files" {
  type        = list(string)
  description = "Lista de arquivos do projeto para fazer upload"
}

# Defina uma variável para o nome do projeto
variable "project_name" {
  type        = string
  description = "Nome do projeto"
}

# Defina uma variável para o nome do bucket
variable "bucket_name" {
  type        = string
  description = "Nome do bucket"
}

