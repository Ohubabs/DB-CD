/*resource "helm_release" "mongodb" {
  name       = "mongodb"
  #create_namespace = true
  namespace  = "konoha" #konoha
  repository = "oci://registry-1.docker.io/bitnamicharts"
  chart      = "mongodb"
  values = [
    "${file("mongo.yml")}"
  ]
}

resource "kubernetes_storage_class" "mongo-sc" {
  metadata {
    name = "mongo-sc"
  }
  storage_provisioner = "ebs.csi.aws.com"
  volume_binding_mode = "Immediate"
  parameters = {
    type = "gp2"
  }
}*/

#test nodeselector with label db=mongo for springapp setup
#pracrice setting up mongo secret so as not to hard code in helm chart and 
#later on transition to vault 
