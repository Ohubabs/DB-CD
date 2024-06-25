resource "kubernetes_secret_v1" "springapp-mongodb-auth" { #do not name krillin so it won't crash with the secret for mongodb
  metadata {
    name = "springapp-mongodb-auth"
    namespace = "springapp" 
  }

  data = {
    MONGO_DB_USERNAME = var.krillin
    MONGO_DB_PASSWORD = var.destructodisk
  }
}

