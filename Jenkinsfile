pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION    = 'ap-south-1' 
    }
    
    stages {
        stage('Git Checkout') {
            steps {
                // Pulls code from your repository
                checkout scmGit(
                    branches: [[name: 'master']], 
                    userRemoteConfigs: [[url: 'https://github.com/iamhp34/terraform.git']]
                )
            }
        }

        stage('Terraform Init & Validate') {
            steps {
                sh 'terraform init'
                sh 'terraform validate'
            }
        }
        
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }
        
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
        
        stage('Hold for 5 Minutes') {
            steps {
                echo 'Holding resources for 5 minutes before destruction...'
                sleep time: 5, unit: 'MINUTES'
            }
        }
        
        stage('Terraform Destroy') {
            steps {
                sh 'terraform destroy -auto-approve'
            }
        }
    }
}
