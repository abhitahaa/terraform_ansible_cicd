pipeline {
    agent any
    tools {
        terraform 'terraform'
    }
    stages {
        stage('GitClone') {
            steps {
                git branch: 'main', url: 'https://github.com/abhitahaa/terraform_ansible_cicd.git'
            }
        }
         stage('Terraform init') {
            steps {
                sh label: '', script: 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh label: '', script: 'terraform plan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh label: '', script: 'terraform apply --auto-approve'
            }
        }
        stage('Terraform Destroy') {
            steps {
                sh label: '', script: 'terraform destroy --auto-approve'
            }
        }
        
    }
}
