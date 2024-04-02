pipeline{
    agent { 
        label 'kubernetes'
  }
    stages{
        //stage('Clone Code'){
            //steps{
                //sh "echo cloning code"
                //sh "echo clone code complete"
                //git 'https://github.com/Konoha-23/springapp-mongo.git
            //}
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
