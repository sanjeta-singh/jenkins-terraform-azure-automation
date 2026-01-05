pipeline {
    agent any

    stages {

        stage ('Build Application') {
            steps {
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }

        stage ('Terraform Initialization') {
            steps {
                sh 'terraform init'
            }
        }
         
        stage ('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }
        
        stage ('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage ('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }   
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed. Please check the logs.'
        }
    }
}