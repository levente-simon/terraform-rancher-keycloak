terraform {
  required_providers {
    rancher2 = {
      source  = "rancher/rancher2"
      version = ">= 1.22.2"
    }
  }
}

provider "rancher2" {
  api_url    = var.rancher_url
  token_key  = var.rancher_token
  insecure   = var.rancher_conn_insecure
}

data "rancher2_cluster" "kube_cluster" {
  name = var.cluster_name
}

resource "rancher2_project" "keycloak" {
  name = "keycloak"
  cluster_id = data.rancher2_cluster.kube_cluster.id
}

resource "rancher2_namespace" "keycloak" {
  name = var.keycloak_namespace
  project_id = rancher2_project.keycloak.id
  description = "namespace for keycloak"
}

resource "rancher2_app_v2" "keycloak" {
  depends_on = [ rancher2_namespace.keycloak ]
  lifecycle {
    ignore_changes  = all 
  }

  cluster_id = data.rancher2_cluster.kube_cluster.id
  name       = "keycloak"
  repo_name  = "bitnami"
  chart_name = "keycloak"
  namespace  = var.keycloak_namespace
  values     = format(file("${path.module}/etc/keycloak.yaml"),
                   var.admin_password,
                   "https://${var.keycloak_host}",
                   var.keycloak_host)
}

