resource "kubernetes_secret_v1" "springapp-mongodb-auth" {
  metadata {
    name = "tien"
    namespace = "springapp" 
  }

  data = {
    MONGO_DB_USERNAME = var.tien 
    MONGO_DB_PASSWORD = var.tribeam
  }
