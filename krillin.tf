resource "kubernetes_secret_v1" "krillin" {
  metadata {
    name = "krillin"
    namespace = "springapp" 
  }

  data = {
    MONGO_DB_USERNAME = var.krillin
    MONGO_DB_PASSWORD = var.destructodisk
  }
