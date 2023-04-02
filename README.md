# Create_Aws_Resources_Using_terraform
Terraform code to create aws resources (ec2 as webserver , key-pair , security-group)

File Details :

terraform.tfvars - File to take user input.

variable.tf - File to declare variables.

main.tf - It contains code related to create ec2 instance on aws.

userdata_script.sh - Script to setup nginx server and host web application.

security_group.tf - It contains code related to create security group and define ingress/engress rules.

key_pair.tf - It contains code related to create key pair on aws.

    Note - to create rsa public/private keys on windows, use this 
    command

    ssh-keygen -t rsa - It will create public and private keys . you can 
    then pass public key while creating key-pair and use private key for 
    logging into ec2 .