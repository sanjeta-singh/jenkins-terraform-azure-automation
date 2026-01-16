pipeline {
    agent any

    environment {
        ARM_CLIENT_ID       = credentials('ARM_CLIENT_ID')
        ARM_CLIENT_SECRET   = credentials('ARM_CLIENT_SECRET')
        ARM_TENANT_ID       = credentials('ARM_TENANT_ID')
        ARM_SUBSCRIPTION_ID = credentials('ARM_SUBSCRIPTION_ID')
        TF_VAR_public_key_content = credentials('vm_public_key') 
    }

    stages {
        stage('Build Application') {
            steps {
                sh 'pwd'
                sh 'ls -l'
                sh 'chmod +x scripts/build.sh'
                sh './scripts/build.sh'
            }
        }

        stage('Terraform Initialization') {
            steps {
                dir('terraform') {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                dir('terraform') {
                    sh 'terraform validate'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir('terraform') {
                    sh 'terraform plan'
                }
            }
        }
        
        // TEMPORARY STAGE TO FORCE REPLACEMENT OF VNET
        stage('Terraform Taint VNet') {
            steps {
                dir('terraform') {
                    // This command tells Azure to destroy the old network and build a fresh one
                    sh 'terraform taint azurerm_virtual_network.vnet_dev'
                }  
            }
        }

        stage('Terraform Apply') {
            steps {
                dir('terraform') {
                    sh 'terraform apply --auto-approve'
                }
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
