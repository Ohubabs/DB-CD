pipeline{
    agent { 
        label 'kubernetes'
  }
    stages{
        //stage('Clone Code'){
            //steps{
                //sh "echo cloning code"
                //sh "echo clone code complete"
                //git 'https://github.com/Ohubabs/terra_mattermost.git'
            //}
        //}
        //stage('Create Namespace'){
        //    steps{
        //      sh "echo 'Create Namespace'"
        //      sh "kubectl apply -f analytics-namespace.yml"   
        //    }
        //}
        //stage('Create Secret'){
        //    steps{
        //      sh "echo 'Create Secret'"
        //      sh "kubectl apply -f analytics-secret.yml"   
        //    }
        //}
        //stage('Create Wordpress ClusterIssuer'){
        //    steps{
        //      sh "echo 'Create Cluster Issuer for Mattermost'"
        //      sh "kubectl apply -f wordpress-issuer.yml"   
        //    }
        //}
        stage('Initialize Terraform Environment'){
            steps{
              sh "echo 'Initialize Terraform'"
              sh "terraform init"   
            }
        }
        stage('Validate Terraform Syntax'){
            steps{
              sh "echo 'Validate Terraform Syntax'"
              sh "terraform validate"   
            }
        }
        stage('Terraform Plan for resources'){
            steps{
              sh "echo 'Set the Plan for networking cluster resources to be created'"
              sh "terraform plan"   
            }
        }
        stage('Deploy konoha.devopsnetwork.net'){
            steps{
              sh "echo 'Create Wordpress'"
              sh "terraform apply --auto-approve"   
            }
        }
    }
}
