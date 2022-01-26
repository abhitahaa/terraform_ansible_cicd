
def action
pipeline {
    agent any
    tools {
        terraform 'terraform'
    }
    stages {
        stage('input'){
            steps{
                script {
                 $action = input message: 'Please enter Terraform action',
                             parameters: [string(defaultValue: '',
                                          description: 'This is Terraform Action',
                                          name: 'action')]
             echo "Terraform action: $action"
                }
            }
        }
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
        stage('Terraform Action') {
            steps {
                sh label: '', script: 'terraform ${{$action}} --auto-approve'
            }
        }
        //stage('Terraform Destroy') {
          //  steps {
            //    sh label: '', script: 'terraform destroy --auto-approve'
            //}
        //}
        
    }
}
