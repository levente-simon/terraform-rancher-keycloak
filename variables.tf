variable "cluster_name"           { type = string   }
variable "rancher_url"            { type = string   }
variable "rancher_conn_insecure"  { type = bool     }
variable "keycloak_host"          { type = string   }

variable "rancher_token" {
  type      = string
  sensitive = true
}

variable "admin_password" {
  type      = string
  sensitive = true
}

variable "keycloak_namespace" {
  type    = string
  default = "keycloak"
}
