module "gke_cluster" {
  source         = "github.com/kaathepython/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = 2

}

terraform {
  backend "gcs" {
    bucket = "ok-secrets"
    prefix = "terraform/state"
  }
}